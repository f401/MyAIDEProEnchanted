.class public Lcom/s1243808733/aide/ApkBuilderManager;
.super Ljava/lang/Object;
.source "ApkBuilderManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static proxyBuildApking(Ljava/lang/Object;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 130
    :try_start_0
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v1

    .line 132
    const-string v0, "EQ"

    invoke-virtual {v1, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 133
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "-unsigned"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    const-string v3, "apkFile"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    const-string v0, "unsignedApkFile"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const-string v0, "j6_"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    .line 141
    const-string v0, "unsignedApkFile exists"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lcom/s1243808733/aide/api/ApiManager;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v0

    invoke-interface {v0, v2, p0}, Lcom/s1243808733/aide/api/MainActivityEvent;->onBeforeSigningAPK(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 147
    const-string v1, "BuildApking Error"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThrowableUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static proxySign(Ljava/lang/Object;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 44
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v4

    .line 46
    new-instance v5, Ljava/io/File;

    const-string v0, "EQ"

    invoke-virtual {v4, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-unsigned"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableBuildAabAndApks()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 51
    const-string v0, "we"

    invoke-virtual {v4, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    const-string v1, "J0"

    invoke-virtual {v4, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    const-string v2, "J8"

    invoke-virtual {v4, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    const-string v3, "Ws"

    invoke-virtual {v4, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    :try_start_0
    invoke-static {v6, v0, v1, v3, v2}, Lcom/s1243808733/aide/functions/aab/AabTask;->buildAab(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 71
    :cond_1
    :try_start_1
    const-string v0, "we"

    invoke-virtual {v4, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const-string v1, "J0"

    invoke-virtual {v4, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    const-string v2, "J8"

    invoke-virtual {v4, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    const-string v3, "Ws"

    invoke-virtual {v4, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 85
    const-string v0, "com.aide.ui.build.android.I"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance()Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore;

    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    .line 90
    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 92
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 105
    :goto_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "v1"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 106
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "v2"

    const/4 v7, 0x1

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 107
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "v3"

    const/4 v8, 0x1

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 108
    new-instance v7, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;

    const-string v8, "CERT"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v7, v8, v1, v0}, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;)V

    .line 109
    invoke-virtual {v7}, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;->build()Lcom/android/apksig/ApkSigner$SignerConfig;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/android/apksig/ApkSigner$Builder;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/ApkSigner$Builder;-><init>(Ljava/util/List;)V

    .line 112
    invoke-virtual {v1, v6}, Lcom/android/apksig/ApkSigner$Builder;->setInputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;

    .line 113
    invoke-virtual {v1, v5}, Lcom/android/apksig/ApkSigner$Builder;->setOutputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;

    .line 115
    invoke-virtual {v1, v2}, Lcom/android/apksig/ApkSigner$Builder;->setV1SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 116
    invoke-virtual {v1, v3}, Lcom/android/apksig/ApkSigner$Builder;->setV2SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 117
    invoke-virtual {v1, v4}, Lcom/android/apksig/ApkSigner$Builder;->setV3SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 118
    invoke-virtual {v1}, Lcom/android/apksig/ApkSigner$Builder;->build()Lcom/android/apksig/ApkSigner;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/android/apksig/ApkSigner;->sign()V

    .line 120
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_2
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 95
    :cond_2
    :try_start_2
    const-class v0, Lcom/s1243808733/aide/ApkBuilderManager;

    const-string v1, "/assets/keys/testkey.x509.pem"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 96
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 97
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 99
    const-class v1, Lcom/s1243808733/aide/ApkBuilderManager;

    const-string v2, "/assets/keys/testkey.pk8"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 100
    new-instance v1, Lsun1/security/pkcs/PKCS8Key;

    invoke-direct {v1}, Lsun1/security/pkcs/PKCS8Key;-><init>()V

    .line 101
    invoke-virtual {v1, v2}, Lsun1/security/pkcs/PKCS8Key;->decode(Ljava/io/InputStream;)V

    .line 103
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 120
    :catchall_0
    move-exception v0

    .line 122
    const-string v1, "Signature failed"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
