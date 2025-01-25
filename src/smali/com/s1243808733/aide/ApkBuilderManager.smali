.class public Lcom/s1243808733/aide/ApkBuilderManager;
.super Ljava/lang/Object;
.source "ApkBuilderManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static proxyBuildApking(Ljava/lang/Object;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    .line 132
    const-string v3, "EQ"

    invoke-virtual {v2, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 133
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "-unsigned"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    const-string v5, "apkFile"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    const-string v3, "unsignedApkFile"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const-string v3, "j6_"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-virtual {v2, v3, v5}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    .line 141
    const-string p1, "unsignedApkFile exists"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lcom/s1243808733/aide/api/ApiManager;->getIMainActivity()Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object p1

    invoke-interface {p1, v4, p0}, Lcom/s1243808733/aide/api/MainActivityEvent;->onBeforeSigningAPK(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_6b
    .catchall {:try_start_2 .. :try_end_6b} :catchall_6c

    return-void

    :catchall_6c
    move-exception p0

    .line 147
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string v0, "BuildApking Error"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThrowableUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static proxySign(Ljava/lang/Object;)V
    .registers 12

    .line 44
    const-class v0, Lcom/s1243808733/aide/ApkBuilderManager;

    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    .line 46
    new-instance v1, Ljava/io/File;

    const-string v2, "EQ"

    invoke-virtual {p0, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-unsigned"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableBuildAabAndApks()Z

    move-result v2

    const-string v4, "Ws"

    const-string v5, "J8"

    const-string v6, "J0"

    const-string v7, "we"

    if-eqz v2, :cond_75

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v2, v8, :cond_75

    .line 51
    invoke-virtual {p0, v7}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    invoke-virtual {p0, v6}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 53
    invoke-virtual {p0, v5}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 54
    invoke-virtual {p0, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 56
    :try_start_6d
    invoke-static {v3, v2, v8, v10, v9}, Lcom/s1243808733/aide/functions/aab/AabTask;->buildAab(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    :cond_75
    :goto_75
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 71
    :cond_7e
    const/4 v2, 0x0

    const/4 v8, 0x1

    :try_start_80
    invoke-virtual {p0, v7}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 73
    invoke-static {v7}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ea

    invoke-static {v7}, Lcom/blankj/utilcode/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ea

    .line 75
    invoke-virtual {p0, v6}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-virtual {p0, v5}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 77
    invoke-virtual {p0, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 82
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 85
    const-string v6, "com.aide.ui.build.android.I"

    invoke-static {v6}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance()Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/KeyStore;

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {v6, v5, p0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljava/security/PrivateKey;

    .line 90
    invoke-virtual {v6, v5}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 92
    new-array v5, v8, [Ljava/io/Closeable;

    aput-object v4, v5, v2

    invoke-static {v5}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    goto :goto_11a

    .line 95
    :cond_ea
    const-string p0, "/assets/keys/testkey.x509.pem"

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 96
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 97
    new-array v5, v8, [Ljava/io/Closeable;

    aput-object p0, v5, v2

    invoke-static {v5}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 99
    const-string p0, "/assets/keys/testkey.pk8"

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 100
    new-instance v0, Lsun1/security/pkcs/PKCS8Key;

    invoke-direct {v0}, Lsun1/security/pkcs/PKCS8Key;-><init>()V

    .line 101
    invoke-virtual {v0, p0}, Lsun1/security/pkcs/PKCS8Key;->decode(Ljava/io/InputStream;)V

    .line 103
    new-array v5, v8, [Ljava/io/Closeable;

    aput-object p0, v5, v2

    invoke-static {v5}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    move-object p0, v0

    move-object v0, v4

    .line 105
    :goto_11a
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "v1"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 106
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "v2"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 107
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "v3"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 108
    new-instance v7, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;

    const-string v9, "CERT"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v7, v9, p0, v0}, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;)V

    .line 109
    invoke-virtual {v7}, Lcom/android/apksig/ApkSigner$SignerConfig$Builder;->build()Lcom/android/apksig/ApkSigner$SignerConfig;

    move-result-object p0

    .line 111
    new-instance v0, Lcom/android/apksig/ApkSigner$Builder;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/apksig/ApkSigner$Builder;-><init>(Ljava/util/List;)V

    .line 112
    invoke-virtual {v0, v3}, Lcom/android/apksig/ApkSigner$Builder;->setInputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;

    .line 113
    invoke-virtual {v0, v1}, Lcom/android/apksig/ApkSigner$Builder;->setOutputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;

    .line 115
    invoke-virtual {v0, v4}, Lcom/android/apksig/ApkSigner$Builder;->setV1SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 116
    invoke-virtual {v0, v5}, Lcom/android/apksig/ApkSigner$Builder;->setV2SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 117
    invoke-virtual {v0, v6}, Lcom/android/apksig/ApkSigner$Builder;->setV3SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;

    .line 118
    invoke-virtual {v0}, Lcom/android/apksig/ApkSigner$Builder;->build()Lcom/android/apksig/ApkSigner;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/android/apksig/ApkSigner;->sign()V

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_169
    .catchall {:try_start_80 .. :try_end_169} :catchall_16a

    goto :goto_174

    :catchall_16a
    move-exception p0

    .line 122
    new-array v0, v8, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "Signature failed"

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_174
    return-void
.end method
