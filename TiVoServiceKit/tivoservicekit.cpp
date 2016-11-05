#include "tivoservicekit.h"

TiVoService* TiVoService::m_pInstance = nullptr;

TiVoService& TiVoService::getInstance()
{
    if(m_pInstance == nullptr)
        m_pInstance = new TiVoService();

    return *m_pInstance;
}

int TiVoService::getPoolSize()const
{
    return m_nPoolSize;
}

void TiVoService::setPoolSize(int newSize)
{
    m_nPoolSize = newSize;
}

QNetworkReply* TiVoService::createRequest(const QString& url)
{
    QNetworkReply* reply = nullptr;

    // TODO

    return reply;
}

QNetworkReply* TiVoService::addRequest(QNetworkRequest* request)
{
    QNetworkReply* reply = nullptr;

    // TODO

    return reply;
}

TiVoService::TiVoService()
{
}

TiVoService::TiVoService(const TiVoService& ts)
{
    Q_UNUSED(ts)
}

TiVoService& TiVoService::operator=(const TiVoService& ts)
{
    Q_UNUSED(ts)

    Q_ASSERT(false);

    return *this;
}
