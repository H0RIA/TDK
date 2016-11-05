#ifndef TIVOSERVICEKIT_H
#define TIVOSERVICEKIT_H

#include "tivoservicekit_global.h"
#include "base.h"

class TIVOSERVICEKITSHARED_EXPORT TiVoService
{

    typedef QPair<QNetworkRequest*, QNetworkReply*> NetRequest;

    public:
        static TiVoService& getInstance();

        int getPoolSize()const;
        void setPoolSize(int newSize);

        QNetworkReply* createRequest(const QString& url);

    protected:
        QNetworkReply* addRequest(QNetworkRequest* request);

    private:
        TiVoService();
        TiVoService(const TiVoService& ts);
        TiVoService& operator=(const TiVoService& ts);

    signals:
        void requestReady(QNetworkRequest* request, QNetworkReply* reply);

    private:
        int  m_nPoolSize;
        QNetworkAccessManager* m_pNetManager;

        // Requests that are currently being processed
        QList<NetRequest*> m_ActiveRequests;

        // Request queue -> once there is a slot available in the m_ActiveRequests list, we will start processing
        // a request from the RequestQueue
        QList<QNetworkRequest*> m_RequestQueue;

        static TiVoService* m_pInstance;
};

#endif // TIVOSERVICEKIT_H
