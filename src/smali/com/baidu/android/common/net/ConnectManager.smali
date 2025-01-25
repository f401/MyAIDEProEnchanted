.class public Lcom/baidu/android/common/net/ConnectManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnectManager"


# instance fields
.field private mApn:Ljava/lang/String;

.field private mNetType:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mProxy:Ljava/lang/String;

.field private mSubType:I

.field private mSubTypeName:Ljava/lang/String;

.field private mUseWap:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-direct {p0, p1}, Lcom/baidu/android/common/net/ConnectManager;->checkNetworkType(Landroid/content/Context;)V

    return-void
.end method

.method private checkApn(Landroid/content/Context;Landroid/net/NetworkInfo;)V
    .registers 9

    .line 65
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    const-string v0, "10.0.0.200"

    const-string v1, "10.0.0.172"

    const/4 v2, 0x0

    const-string v3, "80"

    const/4 v4, 0x1

    if-eqz p1, :cond_70

    .line 66
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 69
    const-string p2, "cmwap"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_67

    const-string p2, "uniwap"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_67

    const-string p2, "3gwap"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_31

    goto :goto_67

    .line 76
    :cond_31
    const-string p2, "ctwap"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_42

    .line 77
    iput-boolean v4, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    .line 78
    iput-object p1, p0, Lcom/baidu/android/common/net/ConnectManager;->mApn:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mProxy:Ljava/lang/String;

    .line 80
    iput-object v3, p0, Lcom/baidu/android/common/net/ConnectManager;->mPort:Ljava/lang/String;

    return-void

    .line 83
    :cond_42
    const-string p2, "cmnet"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_62

    const-string p2, "uninet"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_62

    const-string p2, "ctnet"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_62

    .line 84
    const-string p2, "3gnet"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_70

    .line 85
    :cond_62
    iput-boolean v2, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    .line 86
    iput-object p1, p0, Lcom/baidu/android/common/net/ConnectManager;->mApn:Ljava/lang/String;

    return-void

    .line 70
    :cond_67
    :goto_67
    iput-boolean v4, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    .line 71
    iput-object p1, p0, Lcom/baidu/android/common/net/ConnectManager;->mApn:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/baidu/android/common/net/ConnectManager;->mProxy:Ljava/lang/String;

    .line 73
    iput-object v3, p0, Lcom/baidu/android/common/net/ConnectManager;->mPort:Ljava/lang/String;

    return-void

    .line 99
    :cond_70
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result p2

    if-eqz p1, :cond_ab

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_ab

    .line 105
    iput-object p1, p0, Lcom/baidu/android/common/net/ConnectManager;->mProxy:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_91

    .line 111
    iput-boolean v4, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    .line 112
    iput-object v3, p0, Lcom/baidu/android/common/net/ConnectManager;->mPort:Ljava/lang/String;

    goto :goto_ad

    .line 113
    :cond_91
    iget-object p1, p0, Lcom/baidu/android/common/net/ConnectManager;->mProxy:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 114
    iput-boolean v4, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    .line 115
    iput-object v3, p0, Lcom/baidu/android/common/net/ConnectManager;->mPort:Ljava/lang/String;

    goto :goto_ad

    .line 118
    :cond_a2
    iput-boolean v2, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    .line 119
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/android/common/net/ConnectManager;->mPort:Ljava/lang/String;

    goto :goto_ad

    .line 123
    :cond_ab
    iput-boolean v2, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    :goto_ad
    return-void
.end method

.method private checkNetworkType(Landroid/content/Context;)V
    .registers 5

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 139
    :try_start_c
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_10} :catch_11

    goto :goto_13

    :catch_11
    move-exception v0

    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_3e

    .line 149
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 150
    iput-object v2, p0, Lcom/baidu/android/common/net/ConnectManager;->mNetType:Ljava/lang/String;

    .line 151
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    goto :goto_32

    .line 153
    :cond_2b
    invoke-direct {p0, p1, v0}, Lcom/baidu/android/common/net/ConnectManager;->checkApn(Landroid/content/Context;Landroid/net/NetworkInfo;)V

    .line 155
    iget-object p1, p0, Lcom/baidu/android/common/net/ConnectManager;->mApn:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/android/common/net/ConnectManager;->mNetType:Ljava/lang/String;

    .line 157
    :goto_32
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    iput p1, p0, Lcom/baidu/android/common/net/ConnectManager;->mSubType:I

    .line 158
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/android/common/net/ConnectManager;->mSubTypeName:Ljava/lang/String;

    :cond_3e
    return-void
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .registers 2

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 178
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 182
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getApn()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()Ljava/lang/String;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mNetType:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mProxy:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()I
    .registers 2

    .line 224
    iget v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mSubType:I

    return v0
.end method

.method public getSubTypeName()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mSubTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public isWapNetwork()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    return v0
.end method
