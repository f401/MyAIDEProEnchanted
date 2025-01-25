.class public Labcd/gw;
.super Ljava/lang/Object;


# direct methods
.method public static j6(Ljava/lang/String;Ljava/io/File;J)V
    .registers 10

    const-string v0, "Probes"

    invoke-static {}, Labcd/vw;->DW()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_c
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_11} :catch_90

    :try_start_11
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p2, p3}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1e} :catch_89

    :try_start_1e
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_7b

    const/high16 v3, 0xa0000

    :try_start_25
    new-array v3, v3, [B

    :goto_27
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_33

    const/4 v5, 0x0

    invoke-virtual {p3, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_6f

    goto :goto_27

    :cond_33
    :try_start_33
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_7b

    if-eqz p2, :cond_3b

    :try_start_38
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_3b
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 p3, 0xc8

    if-ne p2, p3, :cond_69

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/io/File;->setLastModified(J)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Probes download took "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    :cond_69
    const/16 p0, 0x130

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_6e} :catch_89

    goto :goto_91

    :catchall_6f
    move-exception p0

    :try_start_70
    throw p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    :catchall_71
    move-exception p1

    :try_start_72
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_7a

    :catchall_76
    move-exception p3

    :try_start_77
    invoke-static {p0, p3}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7a
    throw p1
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception p0

    :try_start_7c
    throw p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception p1

    if-eqz p2, :cond_88

    :try_start_80
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_88

    :catchall_84
    move-exception p2

    :try_start_85
    invoke-static {p0, p2}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_88
    :goto_88
    throw p1
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_89} :catch_89

    :catch_89
    move-exception p0

    const-string p1, "Probes download error"

    invoke-static {v0, p1, p0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_91

    :catch_90
    move-exception p0

    :cond_91
    :goto_91
    return-void
.end method
