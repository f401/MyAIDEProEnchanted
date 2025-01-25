.class public Lcom/aide/ui/htmluidesigner/v;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Lcom/aide/ui/htmluidesigner/v;
    .annotation runtime Labcd/ru;
        field = 0xeccacc9f34a8f05L
    .end annotation
.end field


# instance fields
.field private Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x3f98c32d59c23780L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/htmluidesigner/v;

    const-wide v1, -0x45c6a7de038d33L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x238c704354871617L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x239000aeac8e2f9dL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/htmluidesigner/v;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/aide/ui/htmluidesigner/u;

    invoke-direct {v4, p0}, Lcom/aide/ui/htmluidesigner/u;-><init>(Lcom/aide/ui/htmluidesigner/v;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/htmluidesigner/v;->FH:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v3
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x27ddc837bd0f974bL
    .end annotation

    const-string v0, "html"

    const-wide v1, 0x1c15bfbac709c540L  # 2.198369430004125E-173

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/htmluidesigner/v;->DW:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_8a

    if-eqz v4, :cond_2d

    const-string p1, "application/x-zip-compressed"

    goto :goto_85

    :cond_2d
    :try_start_2d
    const-string v4, "png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_8a

    if-eqz v4, :cond_38

    const-string p1, "image/png"

    goto :goto_85

    :cond_38
    :try_start_38
    const-string v4, "gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_8a

    if-eqz v4, :cond_43

    const-string p1, "image/gif"

    goto :goto_85

    :cond_43
    :try_start_43
    const-string v4, "jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_83

    const-string v4, "jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    goto :goto_83

    :cond_54
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_80

    :cond_61
    const-string v0, "css"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_67
    .catchall {:try_start_43 .. :try_end_67} :catchall_8a

    if-eqz v0, :cond_6c

    const-string p1, "text/css"

    goto :goto_85

    :cond_6c
    :try_start_6c
    const-string v0, "js"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_8a

    if-eqz v0, :cond_77

    const-string p1, "application/javascript"

    goto :goto_85

    :cond_77
    :try_start_77
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_8a

    goto :goto_85

    :cond_80
    :goto_80
    const-string p1, "text/html"

    goto :goto_85

    :cond_83
    :goto_83
    const-string p1, "image/jpeg"

    :goto_85
    if-nez p1, :cond_89

    const-string p1, "*/*"

    :cond_89
    return-object p1

    :catchall_8a
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/v;->FH:Z

    if-eqz v3, :cond_92

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_92
    throw v0
.end method

.method private FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x47291e1f4ed63525L
    .end annotation

    const-wide v0, -0x1a6f2948555ee5c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/v;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_27

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1a

    const/4 v3, 0x1

    aget-object v2, v2, v3

    goto :goto_1c

    :cond_1a
    const-string v2, ""

    :goto_1c
    :try_start_1c
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_27

    if-eqz p1, :cond_26

    const-string v2, "/index.html"

    :cond_26
    return-object v2

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/v;->FH:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method private Hw(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x178f3960c9278099L
    .end annotation

    const-wide v0, -0x5b7a73b79f09440L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/v;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aide/ui/htmluidesigner/v;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-object v3

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/v;->FH:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method private j6(ILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x18fc995e209662acL
    .end annotation

    const-string v0, "\r\n"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/htmluidesigner/v;->DW:Z

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x1120851dbb18289L

    invoke-static {v2, v3, p0, v1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_e4

    :cond_13
    const/16 v1, 0xc8

    const-string v2, "HTTP/1.0 "

    if-eq p1, v1, :cond_78

    const/16 v1, 0x190

    if-eq p1, v1, :cond_6a

    const/16 v1, 0x193

    if-eq p1, v1, :cond_5c

    const/16 v1, 0x194

    if-eq p1, v1, :cond_4e

    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_40

    const/16 v1, 0x1f5

    if-eq p1, v1, :cond_2e

    goto :goto_86

    :cond_2e
    :try_start_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "501 Not Implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_86

    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "500 Internal Server Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "404 Not Found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "403 Forbidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "400 Bad Request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    :cond_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "200 OK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    :goto_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Connection: close\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Server: AIDE\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_d4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Content-Type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/aide/ui/htmluidesigner/v;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_e3
    .catchall {:try_start_2e .. :try_end_e3} :catchall_e4

    return-object p1

    :catchall_e4
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/v;->FH:Z

    if-eqz v1, :cond_f9

    const-wide v2, 0x1120851dbb18289L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f9
    goto :goto_fb

    :goto_fa
    throw v0

    :goto_fb
    goto :goto_fa
.end method

.method private j6()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xc2ef50c3fde46c5L
    .end annotation

    const-wide v0, 0x1a60e9bdfb2e9330L  # 1.273722110749281E-181

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/v;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_40

    :cond_c
    :try_start_c
    new-instance v2, Ljava/net/ServerSocket;

    const/16 v3, 0x1fa3

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_3b
    .catchall {:try_start_c .. :try_end_13} :catchall_40

    :goto_13
    :try_start_13
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/aide/ui/htmluidesigner/v;->j6(Ljava/lang/String;Ljava/io/DataOutputStream;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_35} :catch_36
    .catchall {:try_start_13 .. :try_end_35} :catchall_40

    goto :goto_13

    :catch_36
    move-exception v3

    :try_start_37
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b
    .catchall {:try_start_37 .. :try_end_3a} :catchall_40

    goto :goto_13

    :catch_3b
    move-exception v2

    :try_start_3c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/v;->FH:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    goto :goto_4a

    :goto_49
    throw v2

    :goto_4a
    goto :goto_49
.end method

.method static synthetic j6(Lcom/aide/ui/htmluidesigner/v;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/v;->j6()V

    return-void
.end method

.method private j6(Ljava/io/DataOutputStream;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1c1c08beb28df3c0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/v;->DW:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x176171bd1c03e993L  # 4.667304922114169E-196

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_22

    :cond_11
    const/4 v0, 0x0

    :try_start_12
    invoke-direct {p0, p2, v0}, Lcom/aide/ui/htmluidesigner/v;->j6(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1d
    .catchall {:try_start_12 .. :try_end_1c} :catchall_22

    goto :goto_21

    :catch_1d
    move-exception v0

    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    :goto_21
    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/v;->FH:Z

    if-eqz v1, :cond_37

    const-wide v2, 0x176171bd1c03e993L  # 4.667304922114169E-196

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method private j6(Ljava/io/DataOutputStream;Ljava/io/FileInputStream;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3bbc4640db3f23cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/v;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x532261eea3573591L  # 2.9956728601897326E92

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/16 v0, 0x7d0

    new-array v0, v0, [B

    :goto_10
    invoke-virtual {p2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1d

    goto :goto_10

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/v;->FH:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0x532261eea3573591L  # 2.9956728601897326E92

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    goto :goto_30

    :goto_2f
    throw v0

    :goto_30
    goto :goto_2f
.end method

.method private j6(Ljava/io/Writer;Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/Set;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x4bc806d4fbbd4a10L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/io/BufferedReader;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "/"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/htmluidesigner/v;->DW:Z

    if-eqz v1, :cond_13

    const-wide v2, -0x1c5d35cdc52584afL  # -9.076749877283915E171

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "^\\s*<!--\\s*#include\\s+file\\s*=\\s*(?:\"|\')(.*)(?:\"|\')\\s*-->\\s*$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    :goto_22
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6c

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_70

    if-eqz v4, :cond_63

    const/4 v2, 0x1

    :try_start_33
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4c
    invoke-direct {p0, v2}, Lcom/aide/ui/htmluidesigner/v;->Hw(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, p1, v4, v2, p4}, Lcom/aide/ui/htmluidesigner/v;->j6(Ljava/io/Writer;Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_60} :catch_61
    .catchall {:try_start_33 .. :try_end_60} :catchall_70

    goto :goto_22

    :catch_61
    move-exception v2

    goto :goto_22

    :cond_63
    :try_start_63
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_22

    :cond_6c
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_70

    :cond_6f
    return-void

    :catchall_70
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/v;->FH:Z

    if-eqz v1, :cond_83

    const-wide v2, -0x1c5d35cdc52584afL  # -9.076749877283915E171

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_83
    goto :goto_85

    :goto_84
    throw v0

    :goto_85
    goto :goto_84
.end method

.method public static j6(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x65fe0d0f09583cL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/htmluidesigner/v;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/ui/htmluidesigner/v;->j6:Lcom/aide/ui/htmluidesigner/v;

    if-nez v3, :cond_18

    new-instance v3, Lcom/aide/ui/htmluidesigner/v;

    invoke-direct {v3}, Lcom/aide/ui/htmluidesigner/v;-><init>()V

    sput-object v3, Lcom/aide/ui/htmluidesigner/v;->j6:Lcom/aide/ui/htmluidesigner/v;

    :cond_18
    sget-object v3, Lcom/aide/ui/htmluidesigner/v;->j6:Lcom/aide/ui/htmluidesigner/v;

    invoke-direct {v3, p0}, Lcom/aide/ui/htmluidesigner/v;->v5(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/htmluidesigner/v;->FH:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v3
.end method

.method private j6(Ljava/lang/String;Ljava/io/DataOutputStream;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x21ec2b73f517b620L
    .end annotation

    const-string v0, "GET"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/htmluidesigner/v;->DW:Z

    if-eqz v1, :cond_e

    const-wide v1, -0x17c477658150d9d3L  # -1.2562044877186711E194

    invoke-static {v1, v2, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const/16 v0, 0x1f5

    invoke-direct {p0, p2, v0}, Lcom/aide/ui/htmluidesigner/v;->j6(Ljava/io/DataOutputStream;I)V

    return-void

    :cond_2a
    invoke-direct {p0, p1}, Lcom/aide/ui/htmluidesigner/v;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_85

    :try_start_2e
    invoke-direct {p0, v1}, Lcom/aide/ui/htmluidesigner/v;->Hw(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_7e
    .catchall {:try_start_2e .. :try_end_32} :catchall_85

    const/16 v3, 0xc8

    :try_start_34
    invoke-direct {p0, v3, v1}, Lcom/aide/ui/htmluidesigner/v;->j6(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-direct {p0, v1}, Lcom/aide/ui/htmluidesigner/v;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "text/html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/aide/ui/htmluidesigner/v;->j6(Ljava/io/Writer;Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_7d

    :cond_6f
    invoke-direct {p0, p2, v2}, Lcom/aide/ui/htmluidesigner/v;->j6(Ljava/io/DataOutputStream;Ljava/io/FileInputStream;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_78} :catch_79
    .catchall {:try_start_34 .. :try_end_78} :catchall_85

    goto :goto_7d

    :catch_79
    move-exception v0

    :try_start_7a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7d
    :goto_7d
    return-void

    :catch_7e
    move-exception v0

    const/16 v0, 0x194

    invoke-direct {p0, p2, v0}, Lcom/aide/ui/htmluidesigner/v;->j6(Ljava/io/DataOutputStream;I)V
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_85

    return-void

    :catchall_85
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/v;->FH:Z

    if-eqz v1, :cond_96

    const-wide v2, -0x17c477658150d9d3L  # -1.2562044877186711E194

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_96
    throw v0
.end method

.method private v5(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x9bb15236b792be3L
    .end annotation

    const-wide v0, -0x72052be8e7e1c8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/v;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/htmluidesigner/v;->Hw:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/v;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method
