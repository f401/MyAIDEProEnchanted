.class public Lcom/baidu/android/common/net/ConnectManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


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
    .registers 1

    .line 15
    const-class v0, Lcom/baidu/android/common/net/ConnectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/common/net/ConnectManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-direct {p0, p1}, Lcom/baidu/android/common/net/ConnectManager;->checkNetworkType(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private checkApn(Landroid/content/Context;Landroid/net/NetworkInfo;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 65
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 66
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    iput-boolean v3, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    .line 71
    iput-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mApn:Ljava/lang/String;

    .line 72
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mProxy:Ljava/lang/String;

    .line 73
    const-string v0, "80"

    iput-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mPort:Ljava/lang/String;

    .line 125
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iput-boolean v3, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    .line 78
    iput-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mApn:Ljava/lang/String;

    .line 79
    const-string v0, "10.0.0.200"

    iput-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mProxy:Ljava/lang/String;

    .line 80
    const-string v0, "80"

    iput-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mPort:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_2
    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 84
    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    :cond_3
    iput-boolean v4, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    .line 86
    iput-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mApn:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_4
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    .line 102
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 105
    iput-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mProxy:Ljava/lang/String;

    .line 109
    const-string v0, "10.0.0.172"

    iget-object v2, p0, Lcom/baidu/android/common/net/ConnectManager;->mProxy:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    iput-boolean v3, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    .line 112
    const-string v0, "80"

    iput-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mPort:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_5
    const-string v0, "10.0.0.200"

    iget-object v2, p0, Lcom/baidu/android/common/net/ConnectManager;->mProxy:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    iput-boolean v3, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    .line 115
    const-string v0, "80"

    iput-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mPort:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_6
    iput-boolean v4, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mPort:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_7
    iput-boolean v4, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    goto/16 :goto_0
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

    .line 136
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :goto_0
    if-eqz v0, :cond_0

    .line 149
    const-string v1, "wifi"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const-string v1, "wifi"

    iput-object v1, p0, Lcom/baidu/android/common/net/ConnectManager;->mNetType:Ljava/lang/String;

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/android/common/net/ConnectManager;->mUseWap:Z

    .line 157
    :goto_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    iput v1, p0, Lcom/baidu/android/common/net/ConnectManager;->mSubType:I

    .line 158
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/common/net/ConnectManager;->mSubTypeName:Ljava/lang/String;

    .line 166
    :cond_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/baidu/android/common/net/ConnectManager;->checkApn(Landroid/content/Context;Landroid/net/NetworkInfo;)V

    .line 155
    iget-object v1, p0, Lcom/baidu/android/common/net/ConnectManager;->mApn:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/android/common/net/ConnectManager;->mNetType:Ljava/lang/String;

    goto :goto_1
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .registers 3

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 178
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
