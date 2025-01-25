.class Labcd/GJ$a;
.super Labcd/RJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/GJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private DW:Lcom/jcraft/jsch/ChannelSftp;

.field final FH:Labcd/GJ;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Labcd/GJ;Labcd/GJ$a;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Labcd/GJ$a;->FH:Labcd/GJ;

    invoke-direct {p0}, Labcd/RJ;-><init>()V

    :try_start_5
    invoke-virtual {p1}, Labcd/GJ;->j3()Lcom/jcraft/jsch/ChannelSftp;

    move-result-object p1

    iput-object p1, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v0, p2, Labcd/GJ$a;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Ljava/lang/String;)V

    iget-object p1, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/ChannelSftp;->DW(Ljava/lang/String;)V

    iget-object p1, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp;->j3()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/GJ$a;->j6:Ljava/lang/String;
    :try_end_1d
    .catch Labcd/yD; {:try_start_5 .. :try_end_1d} :catch_49
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_5 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t enter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " from "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Labcd/GJ$a;->j6:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/yD;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_49
    move-exception p1

    invoke-virtual {p0}, Labcd/GJ$a;->j6()V

    throw p1
.end method

.method constructor <init>(Labcd/GJ;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Labcd/GJ$a;->FH:Labcd/GJ;

    invoke-direct {p0}, Labcd/RJ;-><init>()V

    const-string v0, "/~"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_12
    const-string v0, "~/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Labcd/GJ;->j3()Lcom/jcraft/jsch/ChannelSftp;

    move-result-object p1

    iput-object p1, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->DW(Ljava/lang/String;)V

    iget-object p1, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    const-string v0, "objects"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Ljava/lang/String;)V

    iget-object p1, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp;->j3()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/GJ$a;->j6:Ljava/lang/String;
    :try_end_37
    .catch Labcd/yD; {:try_start_1f .. :try_end_37} :catch_5e
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_1f .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t enter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/objects"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/yD;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_5e
    move-exception p1

    invoke-virtual {p0}, Labcd/GJ$a;->j6()V

    throw p1
.end method

.method private DW(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)Labcd/ME;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Labcd/ME;"
        }
    .end annotation

    const-string v0, ": "

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p2}, Labcd/RJ;->Zo(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v2
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_7} :catch_c3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_9a

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_95

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_e} :catch_c3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_9a

    if-eqz v3, :cond_81

    const-string p2, "ref: "

    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4d

    const/4 p2, 0x5

    invoke-virtual {v3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    if-nez v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "../"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Labcd/GJ$a;->DW(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    :cond_37
    if-nez v0, :cond_40

    new-instance v0, Labcd/BE$c;

    sget-object v2, Labcd/ME$a;->j6:Labcd/ME$a;

    invoke-direct {v0, v2, p2, v1}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    :cond_40
    new-instance p2, Labcd/kF;

    invoke-direct {p2, p3, v0}, Labcd/kF;-><init>(Ljava/lang/String;Labcd/ME;)V

    :goto_45
    invoke-interface {p2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_4d
    invoke-static {v3}, Labcd/yE;->DW(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_67

    new-instance p2, Labcd/BE$c;

    invoke-virtual {p1, p3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-direct {p0, v0}, Labcd/GJ$a;->j6(Labcd/ME;)Labcd/ME$a;

    move-result-object v0

    invoke-static {v3}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v1

    invoke-direct {p2, v0, p3, v1}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    goto :goto_45

    :cond_67
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Bad ref: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/yD;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_81
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Empty ref: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/yD;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_95
    move-exception p1

    :try_start_96
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw p1
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_9a} :catch_c3
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9a} :catch_9a

    :catch_9a
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Cannot read "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/GJ$a;->j6:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/yD;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_c3
    move-exception p1

    return-object v1
.end method

.method private gn(Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :try_start_e
    iget-object v0, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->Zo(Ljava/lang/String;)V
    :try_end_13
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_e .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    iget v1, v0, Lcom/jcraft/jsch/SftpException;->j6:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    invoke-direct {p0, p1}, Labcd/GJ$a;->gn(Ljava/lang/String;)V

    :try_start_1d
    iget-object v0, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->Zo(Ljava/lang/String;)V
    :try_end_22
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_1d .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t mkdir "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/GJ$a;->j6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/yD;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private j6(Labcd/ME;)Labcd/ME$a;
    .registers 3

    if-eqz p1, :cond_d

    invoke-interface {p1}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object p1

    sget-object v0, Labcd/ME$a;->FH:Labcd/ME$a;

    if-ne p1, v0, :cond_d

    sget-object p1, Labcd/ME$a;->Hw:Labcd/ME$a;

    return-object p1

    :cond_d
    sget-object p1, Labcd/ME$a;->DW:Labcd/ME$a;

    return-object p1
.end method

.method private j6(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "/"

    :try_start_2
    iget-object v1, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->Hw(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1
    :try_end_8
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_2 .. :try_end_8} :catch_76

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_13

    return-void

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->Zo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, ".."

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_c

    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->Hw()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->gn()Z

    move-result v2

    if-eqz v2, :cond_62

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v4, v2}, Labcd/GJ$a;->j6(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v4, v2}, Labcd/GJ$a;->DW(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)Labcd/ME;

    goto :goto_c

    :catch_76
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t ls "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/GJ$a;->j6:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/yD;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a0

    :goto_9f
    throw p2

    :goto_a0
    goto :goto_9f
.end method


# virtual methods
.method DW()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Labcd/RJ;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "info/alternates"

    invoke-virtual {p0, v0}, Labcd/RJ;->VH(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method FH()Ljava/util/Collection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    iget-object v1, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    const-string v2, "pack"

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->Hw(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_86

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_34

    new-instance v1, Labcd/FJ;

    invoke-direct {v1, p0, v3}, Labcd/FJ;-><init>(Labcd/GJ$a;Ljava/util/HashMap;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {v4}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->Zo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pack-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    const-string v6, ".pack"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4f

    goto :goto_25

    :cond_4f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x5

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".idx"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    goto :goto_25

    :cond_73
    invoke-virtual {v4}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->Hw()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jcraft/jsch/SftpATTRS;->FH()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_86
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {v5}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->Zo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_5 .. :try_end_93} :catch_94

    goto :goto_1b

    :catch_94
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t ls "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/GJ$a;->j6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/yD;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b8

    :goto_b7
    throw v2

    :goto_b8
    goto :goto_b7
.end method

.method Hw()Labcd/HJ;
    .registers 3

    iget-object v0, p0, Labcd/GJ$a;->FH:Labcd/GJ;

    iget-object v0, v0, Labcd/jJ;->Zo:Labcd/HJ;

    iget-object v1, p0, Labcd/GJ$a;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/HJ;->FH(Ljava/lang/String;)Labcd/HJ;

    move-result-object v0

    return-object v0
.end method

.method Hw(Ljava/lang/String;)Labcd/RJ$a;
    .registers 7

    :try_start_0
    iget-object v0, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->v5(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    new-instance v1, Labcd/RJ$a;

    iget-object v2, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->FH(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->Zo()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Labcd/RJ$a;-><init>(Ljava/io/InputStream;J)V
    :try_end_15
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception v0

    iget v1, v0, Lcom/jcraft/jsch/SftpException;->j6:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t get "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/GJ$a;->j6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/yD;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method j6(Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 5

    :try_start_0
    iget-object p2, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->VH(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_6
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p2

    iget p3, p2, Lcom/jcraft/jsch/SftpException;->j6:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_18

    invoke-direct {p0, p1}, Labcd/GJ$a;->gn(Ljava/lang/String;)V

    :try_start_10
    iget-object p2, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->VH(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_16
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_10 .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception p2

    :cond_18
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t write "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/GJ$a;->j6:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/yD;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method j6()V
    .registers 3

    iget-object v0, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->J0()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp;->DW()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_13

    :cond_10
    iput-object v1, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    goto :goto_17

    :catchall_13
    move-exception v0

    iput-object v1, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    throw v0

    :cond_17
    :goto_17
    return-void
.end method

.method j6(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->gn(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_5} :catch_1f

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    :goto_b
    if-gtz v1, :cond_e

    goto :goto_1e

    :cond_e
    const/4 v2, 0x0

    :try_start_f
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->u7(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1
    :try_end_1c
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_f .. :try_end_1c} :catch_1d

    goto :goto_b

    :catch_1d
    move-exception p1

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    iget v1, v0, Lcom/jcraft/jsch/SftpException;->j6:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    return-void

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/GJ$a;->j6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/yD;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51

    :goto_50
    throw p1

    :goto_51
    goto :goto_50
.end method

.method j6(Ljava/lang/String;[B)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_12
    invoke-super {p0, v0, p2}, Labcd/RJ;->j6(Ljava/lang/String;[B)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_46

    :try_start_15
    iget-object p2, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p2, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_15 .. :try_end_1a} :catch_1b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_46

    return-void

    :catch_1b
    move-exception p2

    :try_start_1c
    new-instance v1, Labcd/yD;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t write "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/GJ$a;->j6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_46} :catch_46

    :catch_46
    move-exception p1

    :try_start_47
    iget-object p2, p0, Labcd/GJ$a;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->gn(Ljava/lang/String;)V
    :try_end_4c
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_4e

    :catch_4d
    move-exception p2

    :goto_4e
    throw p1
.end method

.method v5(Ljava/lang/String;)Labcd/RJ;
    .registers 4

    new-instance v0, Labcd/GJ$a;

    iget-object v1, p0, Labcd/GJ$a;->FH:Labcd/GJ;

    invoke-direct {v0, v1, p0, p1}, Labcd/GJ$a;-><init>(Labcd/GJ;Labcd/GJ$a;Ljava/lang/String;)V

    return-object v0
.end method

.method v5()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0, v0}, Labcd/RJ;->j6(Ljava/util/Map;)V

    const-string v1, "../HEAD"

    const-string v2, "HEAD"

    invoke-direct {p0, v0, v1, v2}, Labcd/GJ$a;->DW(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)Labcd/ME;

    const-string v1, "../refs"

    const-string v2, "refs/"

    invoke-direct {p0, v0, v1, v2}, Labcd/GJ$a;->j6(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
