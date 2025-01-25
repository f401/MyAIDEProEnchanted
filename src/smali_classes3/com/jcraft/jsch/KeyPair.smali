.class public abstract Lcom/jcraft/jsch/KeyPair;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/KeyPair$ASN1;,
        Lcom/jcraft/jsch/KeyPair$ASN1Exception;
    }
.end annotation


# static fields
.field static DW:[[B

.field private static FH:[B

.field private static final Hw:[Ljava/lang/String;

.field private static final Zo:[Ljava/lang/String;

.field private static final j6:[B

.field private static final v5:[Ljava/lang/String;


# instance fields
.field private EQ:Lcom/jcraft/jsch/HASH;

.field protected J0:Z

.field protected J8:[B

.field private QX:[B

.field VH:I

.field private Ws:[B

.field protected gn:Ljava/lang/String;

.field private tp:Lcom/jcraft/jsch/Cipher;

.field u7:Lcom/jcraft/jsch/JSch;

.field private we:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "\n"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->j6:[B

    const/4 v0, 0x2

    new-array v1, v0, [[B

    const-string v2, "Proc-Type: 4,ENCRYPTED"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "DEK-Info: DES-EDE3-CBC,"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/jcraft/jsch/KeyPair;->DW:[[B

    const-string v1, " "

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/jcraft/jsch/KeyPair;->FH:[B

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "PuTTY-User-Key-File-2: "

    aput-object v2, v1, v3

    const-string v2, "Encryption: "

    aput-object v2, v1, v4

    const-string v2, "Comment: "

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "Public-Lines: "

    aput-object v2, v1, v0

    sput-object v1, Lcom/jcraft/jsch/KeyPair;->Hw:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Private-Lines: "

    aput-object v1, v0, v3

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->v5:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Private-MAC: "

    aput-object v1, v0, v3

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->Zo:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/KeyPair;->VH:I

    const-string v1, "no comment"

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->u7:Lcom/jcraft/jsch/JSch;

    iput-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->J0:Z

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->J8:[B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->Ws:[B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->QX:[B

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->u7:Lcom/jcraft/jsch/JSch;

    return-void
.end method

.method private VH()Lcom/jcraft/jsch/HASH;
    .registers 2

    :try_start_0
    const-string v0, "md5"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->DW()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v0

    :goto_17
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    return-object v0
.end method

.method private Zo()Lcom/jcraft/jsch/Cipher;
    .registers 2

    :try_start_0
    const-string v0, "3des-cbc"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    return-object v0
.end method

.method private static j6(B)B
    .registers 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 p0, p0, -0x30

    goto :goto_f

    :cond_b
    add-int/lit8 p0, p0, -0x61

    add-int/lit8 p0, p0, 0xa

    :goto_f
    int-to-byte p0, p0

    return p0
.end method

.method public static j6(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;
    .registers 5

    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_3a

    if-nez p2, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".pub"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_19
    move-object p1, p2

    :goto_1a
    :try_start_1a
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p1

    if-nez p2, :cond_30

    const/4 p1, 0x0

    :goto_23
    :try_start_23
    invoke-static {p0, v0, p1}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_2b

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->DW([B)V

    return-object p0

    :catchall_2b
    move-exception p0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->DW([B)V

    throw p0

    :cond_30
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catch_3a
    move-exception p0

    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static j6(Lcom/jcraft/jsch/JSch;[B)Lcom/jcraft/jsch/KeyPair;
    .registers 12

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_a
    invoke-static {v0, p1}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "PuTTY-User-Key-File-2"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    return-object v2

    :cond_1c
    const-string v3, "Public-Lines"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/Buffer;I)[B

    move-result-object v3

    :cond_2c
    invoke-static {v0, p1}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "Private-Lines"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/Buffer;I)[B

    move-result-object v4

    :cond_42
    invoke-static {v0, p1}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z

    move-result v5

    if-nez v5, :cond_42

    array-length v0, v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Lcom/jcraft/jsch/Util;->DW([BII)[B

    move-result-object v0

    array-length v4, v3

    invoke-static {v3, v5, v4}, Lcom/jcraft/jsch/Util;->DW([BII)[B

    move-result-object v3

    const-string v4, "ssh-rsa"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v3}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length v3, v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    new-instance v1, Lcom/jcraft/jsch/KeyPairRSA;

    invoke-direct {v1, p0, v4, v3, v2}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    goto :goto_cb

    :cond_85
    const-string v4, "ssh-dss"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v3}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length v2, v3

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    new-array v5, v2, [B

    invoke-virtual {v1, v5}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    new-array v6, v2, [B

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    new-array v7, v2, [B

    invoke-virtual {v1, v7}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    new-array v8, v2, [B

    invoke-virtual {v1, v8}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    new-instance v1, Lcom/jcraft/jsch/KeyPairDSA;

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    :goto_cb
    const-string p0, "Encryption"

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "none"

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, v1, Lcom/jcraft/jsch/KeyPair;->J0:Z

    const/4 p0, 0x2

    iput p0, v1, Lcom/jcraft/jsch/KeyPair;->VH:I

    const-string p0, "Comment"

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    iget-boolean p0, v1, Lcom/jcraft/jsch/KeyPair;->J0:Z

    if-eqz p0, :cond_122

    const-string p0, "aes256-cbc"

    invoke-static {p0}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "The cipher \'aes256-cbc\' is required, but it is not available."

    if-eqz p1, :cond_11c

    :try_start_fa
    invoke-static {p0}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jcraft/jsch/Cipher;

    iput-object p0, v1, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->FH()I

    move-result p0

    new-array p0, p0, [B

    iput-object p0, v1, Lcom/jcraft/jsch/KeyPair;->Ws:[B
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_112} :catch_115

    iput-object v0, v1, Lcom/jcraft/jsch/KeyPair;->J8:[B

    goto :goto_127

    :catch_115
    move-exception p0

    new-instance p0, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11c
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_122
    iput-object v0, v1, Lcom/jcraft/jsch/KeyPair;->J8:[B

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/KeyPair;->FH([B)Z

    :goto_127
    return-object v1

    :cond_128
    return-object v2
.end method

.method public static j6(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const/16 v3, 0x8

    new-array v4, v3, [B

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_71

    if-eqz v2, :cond_71

    array-length v11, v2

    const/16 v12, 0xb

    if-le v11, v12, :cond_71

    aget-byte v11, v2, v9

    if-nez v11, :cond_71

    aget-byte v11, v2, v10

    if-nez v11, :cond_71

    aget-byte v11, v2, v7

    if-nez v11, :cond_71

    aget-byte v11, v2, v8

    if-ne v11, v5, :cond_71

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length v3, v2

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->J0()V

    const-string v4, "ssh-rsa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-static {v1, v0}, Lcom/jcraft/jsch/KeyPairRSA;->j6(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v0

    goto :goto_57

    :cond_4b
    const-string v4, "ssh-dss"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-static {v1, v0}, Lcom/jcraft/jsch/KeyPairDSA;->j6(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v0

    :goto_57
    return-object v0

    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "privatekey: invalid key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v6, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_71
    if-eqz v2, :cond_7d

    :try_start_73
    invoke-static/range {p0 .. p1}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/JSch;[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object v11

    if-eqz v11, :cond_7d

    return-object v11

    :catch_7a
    move-exception v0

    goto/16 :goto_65e

    :cond_7d
    if-eqz v2, :cond_81

    array-length v11, v2
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_80} :catch_7a

    goto :goto_82

    :cond_81
    const/4 v11, 0x0

    :goto_82
    const/4 v12, 0x0

    :goto_83
    const/16 v13, 0x2d

    if-lt v12, v11, :cond_88

    goto :goto_a6

    :cond_88
    aget-byte v14, v2, v12

    if-ne v14, v13, :cond_686

    add-int/lit8 v14, v12, 0x4

    if-ge v14, v11, :cond_686

    add-int/lit8 v15, v12, 0x1

    aget-byte v15, v2, v15

    if-ne v15, v13, :cond_686

    add-int/lit8 v15, v12, 0x2

    aget-byte v15, v2, v15

    if-ne v15, v13, :cond_686

    add-int/lit8 v15, v12, 0x3

    aget-byte v15, v2, v15

    if-ne v15, v13, :cond_686

    aget-byte v14, v2, v14

    if-ne v14, v13, :cond_686

    :goto_a6
    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    :goto_ab
    const-string v7, "invalid privatekey: "

    if-lt v12, v11, :cond_b1

    goto/16 :goto_3a8

    :cond_b1
    aget-byte v9, v2, v12

    const/16 v10, 0x42

    const/16 v6, 0x41

    const/16 v13, 0x53

    const/16 v8, 0x45

    if-ne v9, v10, :cond_1b3

    add-int/lit8 v10, v12, 0x3

    if-ge v10, v11, :cond_1b3

    add-int/lit8 v23, v12, 0x1

    aget-byte v3, v2, v23

    if-ne v3, v8, :cond_1b3

    add-int/lit8 v3, v12, 0x2

    aget-byte v3, v2, v3

    const/16 v8, 0x47

    if-ne v3, v8, :cond_1b3

    aget-byte v3, v2, v10

    const/16 v8, 0x49

    if-ne v3, v8, :cond_1b3

    add-int/lit8 v12, v12, 0x6

    add-int/lit8 v3, v12, 0x2

    if-ge v3, v11, :cond_1a1

    aget-byte v5, v2, v12

    const/16 v9, 0x44

    if-ne v5, v9, :cond_ef

    add-int/lit8 v9, v12, 0x1

    aget-byte v9, v2, v9

    if-ne v9, v13, :cond_ef

    aget-byte v9, v2, v3

    if-ne v9, v6, :cond_ef

    const/4 v3, 0x1

    :goto_ec
    const/4 v5, 0x3

    goto/16 :goto_18b

    :cond_ef
    const/16 v9, 0x52

    if-ne v5, v9, :cond_ff

    add-int/lit8 v10, v12, 0x1

    aget-byte v10, v2, v10

    if-ne v10, v13, :cond_ff

    aget-byte v10, v2, v3

    if-ne v10, v6, :cond_ff

    const/4 v3, 0x2

    goto :goto_ec

    :cond_ff
    if-ne v5, v13, :cond_112

    add-int/lit8 v10, v12, 0x1

    aget-byte v10, v2, v10

    if-ne v10, v13, :cond_112

    aget-byte v10, v2, v3

    const/16 v13, 0x48

    if-ne v10, v13, :cond_112

    const/4 v3, 0x3

    const/4 v5, 0x3

    const/4 v14, 0x1

    goto/16 :goto_18b

    :cond_112
    add-int/lit8 v10, v12, 0x6

    if-ge v10, v11, :cond_147

    const/16 v13, 0x50

    if-ne v5, v13, :cond_147

    add-int/lit8 v13, v12, 0x1

    aget-byte v13, v2, v13

    if-ne v13, v9, :cond_147

    aget-byte v13, v2, v3

    if-ne v13, v8, :cond_147

    add-int/lit8 v8, v12, 0x3

    aget-byte v13, v2, v8

    const/16 v14, 0x56

    if-ne v13, v14, :cond_147

    add-int/lit8 v13, v12, 0x4

    aget-byte v13, v2, v13

    if-ne v13, v6, :cond_147

    add-int/lit8 v6, v12, 0x5

    aget-byte v6, v2, v6

    const/16 v13, 0x54

    if-ne v6, v13, :cond_147

    aget-byte v6, v2, v10

    const/16 v13, 0x45

    if-ne v6, v13, :cond_147

    move v12, v8

    const/4 v3, 0x3

    const/4 v5, 0x3

    const/4 v14, 0x3

    const/16 v17, 0x0

    goto :goto_18b

    :cond_147
    add-int/lit8 v6, v12, 0x8

    if-ge v6, v11, :cond_18f

    const/16 v8, 0x45

    if-ne v5, v8, :cond_18f

    add-int/lit8 v5, v12, 0x1

    aget-byte v5, v2, v5

    const/16 v8, 0x4e

    if-ne v5, v8, :cond_18f

    aget-byte v3, v2, v3

    const/16 v5, 0x43

    if-ne v3, v5, :cond_18f

    add-int/lit8 v3, v12, 0x3

    aget-byte v3, v2, v3

    if-ne v3, v9, :cond_18f

    add-int/lit8 v3, v12, 0x4

    aget-byte v3, v2, v3

    const/16 v5, 0x59

    if-ne v3, v5, :cond_18f

    add-int/lit8 v3, v12, 0x5

    aget-byte v5, v2, v3

    const/16 v8, 0x50

    if-ne v5, v8, :cond_18f

    aget-byte v5, v2, v10

    const/16 v8, 0x54

    if-ne v5, v8, :cond_18f

    add-int/lit8 v12, v12, 0x7

    aget-byte v5, v2, v12

    const/16 v8, 0x45

    if-ne v5, v8, :cond_18f

    aget-byte v5, v2, v6

    const/16 v6, 0x44

    if-ne v5, v6, :cond_18f

    move v12, v3

    const/4 v3, 0x3

    const/4 v5, 0x3

    const/4 v14, 0x3

    :goto_18b
    add-int/2addr v12, v5

    move v5, v3

    goto/16 :goto_35b

    :cond_18f
    :try_start_18f
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_1b3} :catch_7a

    :cond_1b3
    const/16 v3, 0x32

    if-ne v9, v6, :cond_22a

    add-int/lit8 v8, v12, 0x7

    if-ge v8, v11, :cond_22a

    add-int/lit8 v10, v12, 0x1

    aget-byte v10, v2, v10

    const/16 v6, 0x45

    if-ne v10, v6, :cond_228

    add-int/lit8 v6, v12, 0x2

    aget-byte v6, v2, v6

    if-ne v6, v13, :cond_228

    add-int/lit8 v6, v12, 0x3

    aget-byte v6, v2, v6

    const/16 v10, 0x2d

    if-ne v6, v10, :cond_228

    add-int/lit8 v6, v12, 0x4

    aget-byte v6, v2, v6

    if-ne v6, v3, :cond_228

    add-int/lit8 v6, v12, 0x5

    aget-byte v6, v2, v6

    const/16 v10, 0x35

    if-ne v6, v10, :cond_228

    add-int/lit8 v6, v12, 0x6

    aget-byte v6, v2, v6

    const/16 v10, 0x36

    if-ne v6, v10, :cond_228

    aget-byte v6, v2, v8

    const/16 v8, 0x2d

    if-ne v6, v8, :cond_228

    add-int/lit8 v12, v12, 0x8

    :try_start_1ef
    const-string v3, "aes256-cbc"

    invoke-static {v3}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_214

    const-string v3, "aes256-cbc"

    invoke-static {v3}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Cipher;

    invoke-interface {v3}, Lcom/jcraft/jsch/Cipher;->FH()I

    move-result v4

    :goto_20f
    new-array v4, v4, [B

    move-object v15, v3

    goto/16 :goto_35b

    :cond_214
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "privatekey: aes256-cbc is not available "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_228} :catch_7a

    :cond_228
    const/16 v6, 0x41

    :cond_22a
    if-ne v9, v6, :cond_29b

    add-int/lit8 v6, v12, 0x7

    if-ge v6, v11, :cond_299

    add-int/lit8 v8, v12, 0x1

    aget-byte v8, v2, v8

    const/16 v10, 0x45

    if-ne v8, v10, :cond_299

    add-int/lit8 v8, v12, 0x2

    aget-byte v8, v2, v8

    if-ne v8, v13, :cond_299

    add-int/lit8 v8, v12, 0x3

    aget-byte v8, v2, v8

    const/16 v10, 0x2d

    if-ne v8, v10, :cond_299

    add-int/lit8 v8, v12, 0x4

    aget-byte v8, v2, v8

    const/16 v10, 0x31

    if-ne v8, v10, :cond_299

    add-int/lit8 v8, v12, 0x5

    aget-byte v8, v2, v8

    const/16 v10, 0x39

    if-ne v8, v10, :cond_299

    add-int/lit8 v8, v12, 0x6

    aget-byte v8, v2, v8

    if-ne v8, v3, :cond_299

    aget-byte v6, v2, v6

    const/16 v8, 0x2d

    if-ne v6, v8, :cond_299

    add-int/lit8 v12, v12, 0x8

    :try_start_264
    const-string v3, "aes192-cbc"

    invoke-static {v3}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_285

    const-string v3, "aes192-cbc"

    invoke-static {v3}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Cipher;

    invoke-interface {v3}, Lcom/jcraft/jsch/Cipher;->FH()I

    move-result v4

    goto :goto_20f

    :cond_285
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "privatekey: aes192-cbc is not available "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_299
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_299} :catch_7a

    :cond_299
    const/16 v6, 0x41

    :cond_29b
    if-ne v9, v6, :cond_30b

    add-int/lit8 v6, v12, 0x7

    if-ge v6, v11, :cond_30b

    add-int/lit8 v8, v12, 0x1

    aget-byte v8, v2, v8

    const/16 v10, 0x45

    if-ne v8, v10, :cond_30b

    add-int/lit8 v8, v12, 0x2

    aget-byte v8, v2, v8

    if-ne v8, v13, :cond_30b

    add-int/lit8 v8, v12, 0x3

    aget-byte v8, v2, v8

    const/16 v10, 0x2d

    if-ne v8, v10, :cond_30b

    add-int/lit8 v8, v12, 0x4

    aget-byte v8, v2, v8

    const/16 v10, 0x31

    if-ne v8, v10, :cond_30b

    add-int/lit8 v8, v12, 0x5

    aget-byte v8, v2, v8

    if-ne v8, v3, :cond_30b

    add-int/lit8 v3, v12, 0x6

    aget-byte v3, v2, v3

    const/16 v8, 0x38

    if-ne v3, v8, :cond_30b

    aget-byte v3, v2, v6

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_30b

    add-int/lit8 v12, v12, 0x8

    :try_start_2d5
    const-string v3, "aes128-cbc"

    invoke-static {v3}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f7

    const-string v3, "aes128-cbc"

    invoke-static {v3}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Cipher;

    invoke-interface {v3}, Lcom/jcraft/jsch/Cipher;->FH()I

    move-result v4

    goto/16 :goto_20f

    :cond_2f7
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "privatekey: aes128-cbc is not available "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30b
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_30b} :catch_7a

    :cond_30b
    const/16 v3, 0x43

    if-ne v9, v3, :cond_34b

    add-int/lit8 v6, v12, 0x3

    if-ge v6, v11, :cond_34b

    add-int/lit8 v8, v12, 0x1

    aget-byte v8, v2, v8

    const/16 v10, 0x42

    if-ne v8, v10, :cond_34b

    add-int/lit8 v8, v12, 0x2

    aget-byte v8, v2, v8

    if-ne v8, v3, :cond_34b

    aget-byte v3, v2, v6

    const/16 v6, 0x2c

    if-ne v3, v6, :cond_34b

    add-int/lit8 v12, v12, 0x4

    const/4 v3, 0x0

    :goto_32a
    :try_start_32a
    array-length v6, v4

    if-lt v3, v6, :cond_32e

    goto :goto_35b

    :cond_32e
    add-int/lit8 v6, v12, 0x1

    aget-byte v7, v2, v12

    invoke-static {v7}, Lcom/jcraft/jsch/KeyPair;->j6(B)B

    move-result v7

    add-int/lit8 v12, v6, 0x1

    const/4 v8, 0x4

    shl-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xf0

    aget-byte v6, v2, v6

    invoke-static {v6}, Lcom/jcraft/jsch/KeyPair;->j6(B)B

    move-result v6

    and-int/lit8 v6, v6, 0xf

    add-int/2addr v7, v6

    int-to-byte v6, v7

    aput-byte v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_32a

    :cond_34b
    const/16 v3, 0xd

    if-ne v9, v3, :cond_36b

    add-int/lit8 v3, v12, 0x1

    array-length v6, v2
    :try_end_352
    .catch Ljava/lang/Exception; {:try_start_32a .. :try_end_352} :catch_7a

    if-ge v3, v6, :cond_36b

    aget-byte v6, v2, v3

    const/16 v8, 0xa

    if-ne v6, v8, :cond_36d

    move v12, v3

    :goto_35b
    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x7

    const/16 v13, 0x2d

    const/16 v16, 0x4

    const/16 v19, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x1

    goto/16 :goto_67f

    :cond_36b
    const/16 v8, 0xa

    :cond_36d
    if-ne v9, v8, :cond_66f

    add-int/lit8 v3, v12, 0x1

    :try_start_371
    array-length v6, v2
    :try_end_372
    .catch Ljava/lang/Exception; {:try_start_371 .. :try_end_372} :catch_7a

    if-ge v3, v6, :cond_66f

    aget-byte v6, v2, v3

    if-ne v6, v8, :cond_37b

    add-int/lit8 v12, v12, 0x2

    goto :goto_3a8

    :cond_37b
    const/16 v8, 0xd

    if-ne v6, v8, :cond_38d

    add-int/lit8 v6, v12, 0x2

    :try_start_381
    array-length v8, v2
    :try_end_382
    .catch Ljava/lang/Exception; {:try_start_381 .. :try_end_382} :catch_7a

    if-ge v6, v8, :cond_38d

    aget-byte v6, v2, v6

    const/16 v8, 0xa

    if-ne v6, v8, :cond_38d

    add-int/lit8 v12, v12, 0x3

    goto :goto_3a8

    :cond_38d
    move v6, v3

    :goto_38e
    :try_start_38e
    array-length v8, v2
    :try_end_38f
    .catch Ljava/lang/Exception; {:try_start_38e .. :try_end_38f} :catch_7a

    if-lt v6, v8, :cond_392

    goto :goto_398

    :cond_392
    aget-byte v8, v2, v6

    const/16 v9, 0xa

    if-ne v8, v9, :cond_39a

    :goto_398
    const/4 v6, 0x0

    goto :goto_39f

    :cond_39a
    const/16 v9, 0x3a

    if-ne v8, v9, :cond_648

    const/4 v6, 0x1

    :goto_39f
    if-nez v6, :cond_66f

    const/4 v6, 0x3

    if-eq v14, v6, :cond_3a7

    const/16 v17, 0x0

    goto :goto_3a9

    :cond_3a7
    move v12, v3

    :goto_3a8
    move v3, v12

    :goto_3a9
    if-eqz v2, :cond_424

    if-eqz v5, :cond_412

    move v6, v3

    :goto_3ae
    if-lt v6, v11, :cond_3b1

    goto :goto_3b7

    :cond_3b1
    aget-byte v8, v2, v6

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_40f

    :goto_3b7
    sub-int/2addr v11, v6

    if-eqz v11, :cond_3fd

    sub-int/2addr v6, v3

    if-eqz v6, :cond_3fd

    :try_start_3bd
    new-array v8, v6, [B

    const/4 v9, 0x0

    invoke-static {v2, v3, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3c3
    .catch Ljava/lang/Exception; {:try_start_3bd .. :try_end_3c3} :catch_7a

    const/4 v3, 0x0

    :goto_3c4
    if-lt v3, v6, :cond_3c7

    goto :goto_3ec

    :cond_3c7
    aget-byte v9, v8, v3

    const/16 v10, 0xa

    if-ne v9, v10, :cond_3e8

    add-int/lit8 v9, v3, -0x1

    aget-byte v9, v8, v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_3d7

    const/4 v9, 0x1

    goto :goto_3d8

    :cond_3d7
    const/4 v9, 0x0

    :goto_3d8
    add-int/lit8 v10, v3, 0x1

    sub-int v11, v3, v9

    sub-int v12, v6, v10

    :try_start_3de
    invoke-static {v8, v10, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v9, :cond_3e5

    add-int/lit8 v6, v6, -0x1

    :cond_3e5
    const/4 v9, 0x1

    sub-int/2addr v6, v9

    goto :goto_3c4

    :cond_3e8
    const/16 v10, 0x2d

    if-ne v9, v10, :cond_3fa

    :goto_3ec
    const/4 v6, 0x0

    sub-int/2addr v3, v6

    if-lez v3, :cond_3f5

    invoke-static {v8, v6, v3}, Lcom/jcraft/jsch/Util;->DW([BII)[B

    move-result-object v3

    goto :goto_3f6

    :cond_3f5
    const/4 v3, 0x0

    :goto_3f6
    invoke-static {v8}, Lcom/jcraft/jsch/Util;->DW([B)V

    goto :goto_425

    :cond_3fa
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c4

    :cond_3fd
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40f
    add-int/lit8 v6, v6, 0x1

    goto :goto_3ae

    :cond_412
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_424
    const/4 v3, 0x0

    :goto_425
    if-eqz v3, :cond_4a1

    array-length v6, v3
    :try_end_428
    .catch Ljava/lang/Exception; {:try_start_3de .. :try_end_428} :catch_7a

    const/4 v8, 0x4

    if-le v6, v8, :cond_4a1

    const/4 v6, 0x0

    aget-byte v8, v3, v6

    const/16 v6, 0x3f

    if-ne v8, v6, :cond_4a1

    const/4 v6, 0x1

    aget-byte v8, v3, v6

    const/16 v6, 0x6f

    if-ne v8, v6, :cond_4a1

    const/4 v6, 0x2

    aget-byte v8, v3, v6

    const/4 v6, -0x7

    if-ne v8, v6, :cond_4a1

    const/4 v6, 0x3

    aget-byte v8, v3, v6

    const/16 v6, -0x15

    if-ne v8, v6, :cond_4a1

    :try_start_446
    new-instance v6, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v6, v3}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->tp()[B

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v8

    const-string v9, "3des-cbc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_47f

    const-string v9, "none"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a1

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->FH()I

    array-length v3, v3

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->gn()I

    move-result v8

    sub-int/2addr v3, v8

    new-array v3, v3, [B

    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    const/4 v6, 0x0

    goto :goto_4a3

    :cond_47f
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->FH()I

    array-length v0, v3

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->gn()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unknown privatekey format: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4a1
    .catch Ljava/lang/Exception; {:try_start_446 .. :try_end_4a1} :catch_7a

    :cond_4a1
    move/from16 v6, v17

    :goto_4a3
    const-string v8, ""

    if-eqz v0, :cond_5f4

    :try_start_4a7
    array-length v9, v0

    array-length v10, v0
    :try_end_4a9
    .catch Ljava/lang/Exception; {:try_start_4a7 .. :try_end_4a9} :catch_5f3

    const/4 v11, 0x4

    if-le v10, v11, :cond_55e

    const/4 v10, 0x0

    aget-byte v11, v0, v10

    const/16 v10, 0x2d

    if-ne v11, v10, :cond_55e

    const/4 v11, 0x1

    aget-byte v12, v0, v11

    if-ne v12, v10, :cond_55e

    const/4 v12, 0x2

    aget-byte v13, v0, v12

    if-ne v13, v10, :cond_55e

    const/4 v12, 0x3

    aget-byte v13, v0, v12

    if-ne v13, v10, :cond_55e

    const/4 v10, 0x0

    :goto_4c3
    add-int/2addr v10, v11

    :try_start_4c4
    array-length v11, v0
    :try_end_4c5
    .catch Ljava/lang/Exception; {:try_start_4c4 .. :try_end_4c5} :catch_5f3

    if-le v11, v10, :cond_4d0

    aget-byte v11, v0, v10

    const/16 v12, 0xa

    if-ne v11, v12, :cond_4ce

    goto :goto_4d0

    :cond_4ce
    const/4 v11, 0x1

    goto :goto_4c3

    :cond_4d0
    :goto_4d0
    :try_start_4d0
    array-length v11, v0
    :try_end_4d1
    .catch Ljava/lang/Exception; {:try_start_4d0 .. :try_end_4d1} :catch_5f3

    if-gt v11, v10, :cond_4d5

    const/4 v11, 0x0

    goto :goto_4d6

    :cond_4d5
    const/4 v11, 0x1

    :goto_4d6
    if-nez v11, :cond_4dd

    move-object/from16 v17, v8

    move/from16 v16, v11

    goto :goto_500

    :cond_4dd
    aget-byte v12, v0, v10

    const/16 v13, 0xa

    if-ne v12, v13, :cond_550

    add-int/lit8 v12, v10, 0x1

    move v13, v12

    :goto_4e6
    move-object/from16 v17, v8

    :try_start_4e8
    array-length v8, v0
    :try_end_4e9
    .catch Ljava/lang/Exception; {:try_start_4e8 .. :try_end_4e9} :catch_592

    if-lt v13, v8, :cond_4ee

    move/from16 v16, v11

    goto :goto_4f6

    :cond_4ee
    aget-byte v8, v0, v13

    move/from16 v16, v11

    const/16 v11, 0xa

    if-ne v8, v11, :cond_4f8

    :goto_4f6
    const/4 v8, 0x0

    goto :goto_4fd

    :cond_4f8
    const/16 v11, 0x3a

    if-ne v8, v11, :cond_547

    const/4 v8, 0x1

    :goto_4fd
    if-nez v8, :cond_554

    move v10, v12

    :goto_500
    :try_start_500
    array-length v8, v0
    :try_end_501
    .catch Ljava/lang/Exception; {:try_start_500 .. :try_end_501} :catch_592

    if-gt v8, v10, :cond_505

    const/16 v16, 0x0

    :cond_505
    move v8, v10

    :goto_506
    if-eqz v16, :cond_525

    if-lt v8, v9, :cond_50b

    goto :goto_525

    :cond_50b
    aget-byte v11, v0, v8

    const/16 v12, 0xa

    if-ne v11, v12, :cond_51d

    add-int/lit8 v11, v8, 0x1

    sub-int v12, v9, v8

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    :try_start_517
    invoke-static {v0, v11, v0, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_506

    :cond_51d
    const/16 v12, 0x2d

    if-ne v11, v12, :cond_522

    goto :goto_525

    :cond_522
    add-int/lit8 v8, v8, 0x1

    goto :goto_506

    :cond_525
    :goto_525
    if-eqz v16, :cond_5f6

    sub-int/2addr v8, v10

    invoke-static {v0, v10, v8}, Lcom/jcraft/jsch/Util;->DW([BII)[B

    move-result-object v0
    :try_end_52c
    .catch Ljava/lang/Exception; {:try_start_517 .. :try_end_52c} :catch_592

    if-eqz v2, :cond_531

    const/4 v8, 0x3

    if-ne v5, v8, :cond_5e9

    :cond_531
    const/16 v8, 0x8

    aget-byte v8, v0, v8

    const/16 v9, 0x64

    if-ne v8, v9, :cond_53e

    move-object/from16 v8, v17

    const/4 v5, 0x1

    goto/16 :goto_5f9

    :cond_53e
    const/16 v9, 0x72

    if-ne v8, v9, :cond_5e9

    move-object/from16 v8, v17

    const/4 v5, 0x2

    goto/16 :goto_5f9

    :cond_547
    const/16 v8, 0x8

    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v16

    move-object/from16 v8, v17

    goto :goto_4e6

    :cond_550
    move-object/from16 v17, v8

    move/from16 v16, v11

    :cond_554
    const/16 v8, 0x8

    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v16

    move-object/from16 v8, v17

    goto/16 :goto_4d6

    :cond_55e
    move-object/from16 v17, v8

    const/4 v8, 0x0

    aget-byte v10, v0, v8

    const/16 v8, 0x73

    if-ne v10, v8, :cond_5f6

    const/4 v8, 0x1

    aget-byte v10, v0, v8

    const/16 v8, 0x73

    if-ne v10, v8, :cond_5f6

    const/4 v8, 0x2

    aget-byte v10, v0, v8

    const/16 v8, 0x68

    if-ne v10, v8, :cond_5f6

    const/4 v8, 0x3

    aget-byte v10, v0, v8

    const/16 v13, 0x2d

    if-ne v10, v13, :cond_5f6

    if-nez v2, :cond_595

    :try_start_57e
    array-length v8, v0
    :try_end_57f
    .catch Ljava/lang/Exception; {:try_start_57e .. :try_end_57f} :catch_592

    const/4 v10, 0x7

    if-le v8, v10, :cond_595

    const/16 v16, 0x4

    aget-byte v8, v0, v16

    const/16 v10, 0x64

    if-ne v8, v10, :cond_58c

    const/4 v8, 0x1

    goto :goto_596

    :cond_58c
    const/16 v10, 0x72

    if-ne v8, v10, :cond_595

    const/4 v8, 0x2

    goto :goto_596

    :catch_592
    move-exception v0

    goto/16 :goto_5f6

    :cond_595
    move v8, v5

    :goto_596
    const/4 v5, 0x0

    :goto_597
    if-lt v5, v9, :cond_59a

    goto :goto_5a0

    :cond_59a
    aget-byte v10, v0, v5

    const/16 v11, 0x20

    if-ne v10, v11, :cond_5ec

    :goto_5a0
    const/4 v10, 0x1

    add-int/2addr v5, v10

    move v10, v5

    if-ge v5, v9, :cond_5bb

    :goto_5a5
    if-lt v10, v9, :cond_5a8

    goto :goto_5ae

    :cond_5a8
    aget-byte v11, v0, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_5b8

    :goto_5ae
    sub-int v11, v10, v5

    :try_start_5b0
    invoke-static {v0, v5, v11}, Lcom/jcraft/jsch/Util;->DW([BII)[B

    move-result-object v5
    :try_end_5b4
    .catch Ljava/lang/Exception; {:try_start_5b0 .. :try_end_5b4} :catch_5b5

    goto :goto_5bc

    :catch_5b5
    move-exception v0

    move v5, v8

    goto :goto_5f6

    :cond_5b8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5a5

    :cond_5bb
    const/4 v5, 0x0

    :goto_5bc
    add-int/lit8 v11, v10, 0x1

    if-ge v10, v9, :cond_5e7

    move v10, v11

    :goto_5c1
    if-lt v10, v9, :cond_5c4

    goto :goto_5ca

    :cond_5c4
    aget-byte v12, v0, v10

    const/16 v13, 0xa

    if-ne v12, v13, :cond_5e2

    :goto_5ca
    if-lez v10, :cond_5d5

    add-int/lit8 v9, v10, -0x1

    aget-byte v12, v0, v9

    const/16 v13, 0xd

    if-ne v12, v13, :cond_5d5

    move v10, v9

    :cond_5d5
    if-ge v11, v10, :cond_5e7

    :try_start_5d7
    new-instance v9, Ljava/lang/String;

    sub-int/2addr v10, v11

    invoke-direct {v9, v0, v11, v10}, Ljava/lang/String;-><init>([BII)V
    :try_end_5dd
    .catch Ljava/lang/Exception; {:try_start_5d7 .. :try_end_5dd} :catch_5e0

    move-object/from16 v17, v9

    goto :goto_5e7

    :catch_5e0
    move-exception v0

    goto :goto_5e7

    :cond_5e2
    const/16 v18, 0xd

    add-int/lit8 v10, v10, 0x1

    goto :goto_5c1

    :cond_5e7
    :goto_5e7
    move-object v0, v5

    move v5, v8

    :cond_5e9
    move-object/from16 v8, v17

    goto :goto_5f9

    :cond_5ec
    const/16 v13, 0xa

    const/16 v18, 0xd

    add-int/lit8 v5, v5, 0x1

    goto :goto_597

    :catch_5f3
    move-exception v0

    :cond_5f4
    move-object/from16 v17, v8

    :cond_5f6
    :goto_5f6
    move-object/from16 v8, v17

    const/4 v0, 0x0

    :goto_5f9
    const/4 v9, 0x1

    if-ne v5, v9, :cond_602

    new-instance v5, Lcom/jcraft/jsch/KeyPairDSA;

    invoke-direct {v5, v1}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    goto :goto_615

    :cond_602
    const/4 v9, 0x2

    if-ne v5, v9, :cond_60b

    new-instance v5, Lcom/jcraft/jsch/KeyPairRSA;

    invoke-direct {v5, v1}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    goto :goto_615

    :cond_60b
    const/4 v5, 0x3

    if-ne v14, v5, :cond_614

    new-instance v5, Lcom/jcraft/jsch/KeyPairPKCS8;

    invoke-direct {v5, v1}, Lcom/jcraft/jsch/KeyPairPKCS8;-><init>(Lcom/jcraft/jsch/JSch;)V

    goto :goto_615

    :cond_614
    const/4 v5, 0x0

    :goto_615
    if-eqz v5, :cond_647

    iput-boolean v6, v5, Lcom/jcraft/jsch/KeyPair;->J0:Z

    iput-object v0, v5, Lcom/jcraft/jsch/KeyPair;->QX:[B

    iput v14, v5, Lcom/jcraft/jsch/KeyPair;->VH:I

    iput-object v8, v5, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    iput-object v15, v5, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    if-eqz v6, :cond_62b

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/jcraft/jsch/KeyPair;->J0:Z

    iput-object v4, v5, Lcom/jcraft/jsch/KeyPair;->Ws:[B

    iput-object v3, v5, Lcom/jcraft/jsch/KeyPair;->J8:[B

    goto :goto_647

    :cond_62b
    invoke-virtual {v5, v3}, Lcom/jcraft/jsch/KeyPair;->FH([B)Z

    move-result v0

    if-eqz v0, :cond_635

    const/4 v3, 0x0

    iput-boolean v3, v5, Lcom/jcraft/jsch/KeyPair;->J0:Z

    return-object v5

    :cond_635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_647
    :goto_647
    return-object v5

    :cond_648
    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x7

    const/16 v13, 0x2d

    const/16 v16, 0x4

    const/16 v18, 0xd

    const/16 v19, 0x3

    const/16 v20, 0xa

    const/16 v21, 0x0

    const/16 v22, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_38e

    :goto_65e
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-nez v1, :cond_66c

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_66c
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_66f
    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x7

    const/16 v13, 0x2d

    const/16 v16, 0x4

    const/16 v19, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x1

    add-int/lit8 v12, v12, 0x1

    :goto_67f
    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_ab

    :cond_686
    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x7

    const/16 v16, 0x4

    const/16 v19, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x1

    add-int/lit8 v12, v12, 0x1

    const/16 v3, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_83
.end method

.method private static j6(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z
    .registers 11

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    move v2, v1

    :goto_5
    array-length v3, v0

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v2, v3, :cond_d

    goto :goto_11

    :cond_d
    aget-byte v3, v0, v2

    if-ne v3, v4, :cond_14

    :goto_11
    move v3, v1

    move-object v7, v5

    goto :goto_2e

    :cond_14
    const/16 v7, 0x3a

    if-ne v3, v7, :cond_5f

    new-instance v3, Ljava/lang/String;

    sub-int v7, v2, v1

    invoke-direct {v3, v0, v1, v7}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v1, v2, 0x1

    array-length v2, v0

    if-ge v1, v2, :cond_2c

    aget-byte v2, v0, v1

    const/16 v7, 0x20

    if-ne v2, v7, :cond_2c

    add-int/lit8 v1, v1, 0x1

    :cond_2c
    move-object v7, v3

    move v3, v1

    :goto_2e
    const/4 v8, 0x0

    if-nez v7, :cond_32

    return v8

    :cond_32
    move v1, v3

    :goto_33
    array-length v2, v0

    if-lt v1, v2, :cond_37

    goto :goto_4f

    :cond_37
    aget-byte v2, v0, v1

    if-ne v2, v4, :cond_5c

    new-instance v5, Ljava/lang/String;

    sub-int v2, v1, v3

    invoke-direct {v5, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v3, v1, 0x1

    array-length v1, v0

    if-ge v3, v1, :cond_4f

    aget-byte v0, v0, v3

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4f

    add-int/lit8 v3, v3, 0x1

    :cond_4f
    :goto_4f
    if-eqz v5, :cond_56

    invoke-virtual {p1, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v3, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    :cond_56
    if-eqz v7, :cond_5b

    if-eqz v5, :cond_5b

    return v6

    :cond_5b
    return v8

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private static j6(Lcom/jcraft/jsch/Buffer;I)[B
    .registers 10

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    const/4 v2, 0x0

    :goto_5
    if-gtz p1, :cond_c

    if-eqz v2, :cond_b

    iput v1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    :cond_b
    return-object v2

    :cond_c
    move v3, v1

    :goto_d
    array-length v4, v0

    if-gt v4, v3, :cond_11

    goto :goto_3f

    :cond_11
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    const/16 v5, 0xd

    if-ne v3, v5, :cond_50

    const/4 v3, 0x0

    if-nez v2, :cond_26

    sub-int v2, v4, v1

    add-int/lit8 v2, v2, -0x1

    new-array v5, v2, [B

    invoke-static {v0, v1, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3d

    :cond_26
    array-length v5, v2

    add-int/2addr v5, v4

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [B

    array-length v6, v2

    invoke-static {v2, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v2

    sub-int v7, v4, v1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v0, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_3a
    array-length v6, v2

    if-lt v1, v6, :cond_4b

    :goto_3d
    move v3, v4

    move-object v2, v5

    :goto_3f
    aget-byte v1, v0, v3

    const/16 v4, 0xa

    if-ne v1, v4, :cond_47

    add-int/lit8 v3, v3, 0x1

    :cond_47
    move v1, v3

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    :cond_4b
    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_50
    move v3, v4

    goto :goto_d
.end method

.method private j6([B[B[B)[B
    .registers 10

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/jcraft/jsch/KeyPair;->j6([B[B)[B

    move-result-object p2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2, p3}, Lcom/jcraft/jsch/Cipher;->j6(I[B[B)V

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->DW([B)V

    array-length p2, p1

    new-array p2, p2, [B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->j6([BII[BI)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p2

    :catch_1b
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method DW([BII)I
    .registers 5

    const/16 v0, 0x30

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jsch/KeyPair;->j6([BII)I

    move-result p1

    return p1
.end method

.method public abstract DW()[B
.end method

.method public abstract DW([B)[B
.end method

.method abstract FH([B)Z
.end method

.method abstract FH()[B
.end method

.method public Hw()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->QX:[B

    return-object v0
.end method

.method public finalize()V
    .registers 1

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->j6()V

    return-void
.end method

.method j6(I)I
    .registers 4

    const/16 v0, 0x7f

    const/4 v1, 0x1

    if-gt p1, v0, :cond_6

    return v1

    :cond_6
    :goto_6
    if-gtz p1, :cond_9

    return v1

    :cond_9
    ushr-int/lit8 p1, p1, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method j6([BII)I
    .registers 8

    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_e

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_e
    add-int/lit8 v1, p2, 0x1

    or-int/lit16 v2, v0, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    move p2, v0

    :goto_16
    if-gtz p2, :cond_1a

    add-int/2addr v1, v0

    return v1

    :cond_1a
    add-int v2, v1, p2

    add-int/lit8 v2, v2, -0x1

    and-int/lit16 v3, p3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    ushr-int/lit8 p3, p3, 0x8

    add-int/lit8 p2, p2, -0x1

    goto :goto_16
.end method

.method j6([BI[B)I
    .registers 6

    const/4 v0, 0x2

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jsch/KeyPair;->j6([BII)I

    move-result p2

    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p3

    add-int/2addr p2, p1

    return p2
.end method

.method public j6()V
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->we:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->DW([B)V

    return-void
.end method

.method j6(Lcom/jcraft/jsch/KeyPair;)V
    .registers 3

    iget-object v0, p1, Lcom/jcraft/jsch/KeyPair;->QX:[B

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->QX:[B

    iget v0, p1, Lcom/jcraft/jsch/KeyPair;->VH:I

    iput v0, p0, Lcom/jcraft/jsch/KeyPair;->VH:I

    iget-object v0, p1, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    iget-object p1, p1, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    return-void
.end method

.method public j6([B)Z
    .registers 6

    iget-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->J0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_b

    xor-int/lit8 p1, v0, 0x1

    return p1

    :cond_b
    array-length v0, p1

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/jcraft/jsch/KeyPair;->J8:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->Ws:[B

    invoke-direct {p0, p1, v2, v0}, Lcom/jcraft/jsch/KeyPair;->j6([B[B[B)[B

    move-result-object p1

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->DW([B)V

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPair;->FH([B)Z

    move-result p1

    if-eqz p1, :cond_25

    iput-boolean v3, p0, Lcom/jcraft/jsch/KeyPair;->J0:Z

    :cond_25
    iget-boolean p1, p0, Lcom/jcraft/jsch/KeyPair;->J0:Z

    xor-int/2addr p1, v1

    return p1
.end method

.method j6([B[B)[B
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->Zo()Lcom/jcraft/jsch/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    :cond_b
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->VH()Lcom/jcraft/jsch/HASH;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    :cond_15
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->j6()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    invoke-interface {v2}, Lcom/jcraft/jsch/HASH;->j6()I

    move-result v2

    div-int v3, v0, v2

    rem-int v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_2c

    const/4 v4, 0x0

    goto :goto_2d

    :cond_2c
    move v4, v2

    :goto_2d
    mul-int v3, v3, v2

    add-int/2addr v3, v4

    new-array v4, v3, [B
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_ce

    :try_start_32
    iget v6, p0, Lcom/jcraft/jsch/KeyPair;->VH:I

    const/4 v7, 0x0

    if-nez v6, :cond_68

    const/4 v6, 0x0

    :goto_38
    add-int v8, v6, v2

    if-le v8, v3, :cond_41

    :goto_3c
    invoke-static {v4, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_cc

    :cond_41
    if-eqz v7, :cond_49

    iget-object v8, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    array-length v9, v7

    invoke-interface {v8, v7, v5, v9}, Lcom/jcraft/jsch/HASH;->update([BII)V

    :cond_49
    iget-object v7, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    array-length v8, p1

    invoke-interface {v7, p1, v5, v8}, Lcom/jcraft/jsch/HASH;->update([BII)V

    iget-object v7, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    array-length v8, p2

    const/16 v9, 0x8

    if-le v8, v9, :cond_57

    goto :goto_58

    :cond_57
    array-length v9, p2

    :goto_58
    invoke-interface {v7, p2, v5, v9}, Lcom/jcraft/jsch/HASH;->update([BII)V

    iget-object v7, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    invoke-interface {v7}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v7

    array-length v8, v7

    invoke-static {v7, v5, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v7

    add-int/2addr v6, v8

    goto :goto_38

    :cond_68
    const/4 p2, 0x1

    if-ne v6, p2, :cond_8c

    const/4 p2, 0x0

    :goto_6c
    add-int v6, p2, v2

    if-le v6, v3, :cond_71

    goto :goto_3c

    :cond_71
    if-eqz v7, :cond_79

    iget-object v6, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    array-length v8, v7

    invoke-interface {v6, v7, v5, v8}, Lcom/jcraft/jsch/HASH;->update([BII)V

    :cond_79
    iget-object v6, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    array-length v7, p1

    invoke-interface {v6, p1, v5, v7}, Lcom/jcraft/jsch/HASH;->update([BII)V

    iget-object v6, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    invoke-interface {v6}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v7

    array-length v6, v7

    invoke-static {v7, v5, v4, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v7

    add-int/2addr p2, v6

    goto :goto_6c

    :cond_8c
    const/4 p2, 0x2

    if-ne v6, p2, :cond_cc

    const-string v0, "sha-1"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    const/4 v2, 0x4

    new-array v3, v2, [B

    const/16 v4, 0x28

    new-array v1, v4, [B

    const/4 v4, 0x0

    :goto_a7
    if-lt v4, p2, :cond_aa

    goto :goto_cc

    :cond_aa
    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->DW()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_ad} :catch_c6
    .catchall {:try_start_32 .. :try_end_ad} :catchall_ce

    const/4 v6, 0x3

    int-to-byte v7, v4

    aput-byte v7, v3, v6

    :try_start_b1
    invoke-interface {v0, v3, v5, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    array-length v6, p1

    invoke-interface {v0, p1, v5, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v6

    mul-int/lit8 v7, v4, 0x14

    const/16 v8, 0x14

    invoke-static {v6, v5, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c3} :catch_c6
    .catchall {:try_start_b1 .. :try_end_c3} :catchall_ce

    add-int/lit8 v4, v4, 0x1

    goto :goto_a7

    :catch_c6
    move-exception p1

    :try_start_c7
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_cc
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_ce

    :cond_cc
    :goto_cc
    monitor-exit p0

    return-object v1

    :catchall_ce
    move-exception p1

    monitor-exit p0

    goto :goto_d2

    :goto_d1
    throw p1

    :goto_d2
    goto :goto_d1
.end method

.method public v5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->J0:Z

    return v0
.end method
