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
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "\n"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->j6:[B

    new-array v0, v2, [[B

    const-string v1, "Proc-Type: 4,ENCRYPTED"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "DEK-Info: DES-EDE3-CBC,"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->DW:[[B

    const-string v0, " "

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->FH:[B

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PuTTY-User-Key-File-2: "

    aput-object v1, v0, v3

    const-string v1, "Encryption: "

    aput-object v1, v0, v4

    const-string v1, "Comment: "

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "Public-Lines: "

    aput-object v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->Hw:[Ljava/lang/String;

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
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/jcraft/jsch/KeyPair;->VH:I

    const-string v0, "no comment"

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->u7:Lcom/jcraft/jsch/JSch;

    iput-boolean v2, p0, Lcom/jcraft/jsch/KeyPair;->J0:Z

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->J8:[B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->Ws:[B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->QX:[B

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->u7:Lcom/jcraft/jsch/JSch;

    return-void
.end method

.method private VH()Lcom/jcraft/jsch/HASH;
    .locals 1

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private Zo()Lcom/jcraft/jsch/Cipher;
    .locals 1

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static j6(B)B
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    int-to-byte v0, v0

    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public static j6(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".pub"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->DW(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    :try_start_2
    invoke-static {p0, v1, v0}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->DW([B)V

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->DW([B)V

    throw v0

    :cond_1
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static j6(Lcom/jcraft/jsch/JSch;[B)Lcom/jcraft/jsch/KeyPair;
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    invoke-static {v2, v7}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PuTTY-User-Key-File-2"

    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    const-string v1, "Public-Lines"

    invoke-virtual {v7, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/Buffer;I)[B

    move-result-object v3

    :cond_3
    invoke-static {v2, v7}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Private-Lines"

    invoke-virtual {v7, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/Buffer;I)[B

    move-result-object v1

    :cond_4
    invoke-static {v2, v7}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z

    move-result v4

    if-nez v4, :cond_4

    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/jcraft/jsch/Util;->DW([BII)[B

    move-result-object v8

    array-length v1, v3

    invoke-static {v3, v5, v1}, Lcom/jcraft/jsch/Util;->DW([BII)[B

    move-result-object v1

    const-string v2, "ssh-rsa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    new-instance v0, Lcom/jcraft/jsch/KeyPairRSA;

    invoke-direct {v0, p0, v2, v1, v6}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    move-object v1, v0

    :goto_1
    const-string v0, "Encryption"

    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v1, Lcom/jcraft/jsch/KeyPair;->J0:Z

    const/4 v0, 0x2

    iput v0, v1, Lcom/jcraft/jsch/KeyPair;->VH:I

    const-string v0, "Comment"

    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    iget-boolean v0, v1, Lcom/jcraft/jsch/KeyPair;->J0:Z

    if-eqz v0, :cond_7

    const-string v0, "aes256-cbc"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    const-string v0, "aes256-cbc"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, v1, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->FH()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, v1, Lcom/jcraft/jsch/KeyPair;->Ws:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v8, v1, Lcom/jcraft/jsch/KeyPair;->J8:[B

    :goto_2
    move-object v6, v1

    goto/16 :goto_0

    :cond_5
    const-string v2, "ssh-dss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    new-array v3, v1, [B

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    new-array v4, v1, [B

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    new-array v5, v1, [B

    invoke-virtual {v0, v5}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    new-instance v0, Lcom/jcraft/jsch/KeyPairDSA;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    move-object v1, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "The cipher \'aes256-cbc\' is required, but it is not available."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "The cipher \'aes256-cbc\' is required, but it is not available."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iput-object v8, v1, Lcom/jcraft/jsch/KeyPair;->J8:[B

    invoke-virtual {v1, v8}, Lcom/jcraft/jsch/KeyPair;->FH([B)Z

    goto :goto_2
.end method

.method public static j6(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;
    .locals 16

    const/16 v2, 0x8

    new-array v8, v2, [B

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v2, v0

    const/16 v3, 0xb

    if-le v2, v3, :cond_3

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_3

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    move-object/from16 v0, p1

    array-length v3, v0

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->v5(I)V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->J0()V

    const-string v4, "ssh-rsa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->j6(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v4, "ssh-dss"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/jcraft/jsch/KeyPairDSA;->j6(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "privatekey: invalid key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x7

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    if-eqz p1, :cond_4

    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/JSch;[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object v2

    if-nez v2, :cond_0

    :cond_4
    if-eqz p1, :cond_f

    move-object/from16 v0, p1

    array-length v2, v0

    move v3, v2

    :goto_1
    const/4 v9, 0x0

    :goto_2
    if-lt v9, v3, :cond_10

    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v8

    :goto_3
    if-lt v9, v3, :cond_12

    move v8, v9

    :cond_6
    :goto_4
    move v9, v5

    :goto_5
    if-eqz p1, :cond_2e

    if-eqz v6, :cond_2d

    move v5, v8

    :goto_6
    if-lt v5, v3, :cond_27

    :cond_7
    sub-int/2addr v3, v5

    if-eqz v3, :cond_2c

    sub-int/2addr v5, v8

    if-eqz v5, :cond_2c

    new-array v10, v5, [B

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v8, v10, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    move v8, v3

    :goto_7
    if-lt v8, v5, :cond_28

    :cond_8
    add-int/lit8 v3, v8, 0x0

    if-lez v3, :cond_2b

    const/4 v5, 0x0

    invoke-static {v10, v5, v3}, Lcom/jcraft/jsch/Util;->DW([BII)[B

    move-result-object v3

    :goto_8
    invoke-static {v10}, Lcom/jcraft/jsch/Util;->DW([B)V

    :goto_9
    if-eqz v3, :cond_30

    array-length v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x4

    if-le v5, v8, :cond_30

    const/4 v5, 0x0

    aget-byte v5, v3, v5

    const/16 v8, 0x3f

    if-ne v5, v8, :cond_30

    const/4 v5, 0x1

    aget-byte v5, v3, v5

    const/16 v8, 0x6f

    if-ne v5, v8, :cond_30

    const/4 v5, 0x2

    aget-byte v5, v3, v5

    const/4 v8, -0x7

    if-ne v5, v8, :cond_30

    const/4 v5, 0x3

    aget-byte v5, v3, v5

    const/16 v8, -0x15

    if-ne v5, v8, :cond_30

    :try_start_1
    new-instance v5, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v5, v3}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->tp()[B

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v8

    const-string v10, "3des-cbc"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2f

    const-string v10, "none"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->FH()I

    array-length v3, v3

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->gn()I

    move-result v8

    sub-int/2addr v3, v8

    new-array v3, v3, [B

    invoke-virtual {v5, v3}, Lcom/jcraft/jsch/Buffer;->j6([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    :goto_a
    const-string v12, ""

    if-eqz p2, :cond_45

    :try_start_2
    move-object/from16 v0, p2

    array-length v13, v0

    move-object/from16 v0, p2

    array-length v8, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v9, 0x4

    if-le v8, v9, :cond_3a

    const/4 v8, 0x0

    aget-byte v8, p2, v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_3a

    const/4 v8, 0x1

    aget-byte v8, p2, v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_3a

    const/4 v8, 0x2

    aget-byte v8, p2, v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_3a

    const/4 v8, 0x3

    aget-byte v8, p2, v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_3a

    const/4 v8, 0x0

    :cond_9
    add-int/lit8 v8, v8, 0x1

    :try_start_3
    move-object/from16 v0, p2

    array-length v9, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-le v9, v8, :cond_a

    aget-byte v9, p2, v8

    const/16 v10, 0xa

    if-ne v9, v10, :cond_9

    :cond_a
    :try_start_4
    move-object/from16 v0, p2

    array-length v9, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-gt v9, v8, :cond_31

    const/4 v11, 0x0

    move v10, v8

    :goto_b
    if-nez v11, :cond_32

    move v9, v10

    :cond_b
    :try_start_5
    move-object/from16 v0, p2

    array-length v8, v0

    if-gt v8, v9, :cond_52

    const/4 v8, 0x0

    :goto_c
    move v10, v9

    move v11, v13

    :goto_d
    if-eqz v8, :cond_c

    if-lt v10, v11, :cond_35

    :cond_c
    if-eqz v8, :cond_51

    sub-int v8, v10, v9

    move-object/from16 v0, p2

    invoke-static {v0, v9, v8}, Lcom/jcraft/jsch/Util;->DW([BII)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v8

    if-eqz p1, :cond_d

    const/4 v9, 0x3

    if-ne v6, v9, :cond_50

    :cond_d
    const/16 v9, 0x8

    aget-byte v9, v8, v9

    const/16 v10, 0x64

    if-ne v9, v10, :cond_37

    const/4 v6, 0x1

    :goto_e
    const/4 v9, 0x1

    if-ne v6, v9, :cond_47

    new-instance v6, Lcom/jcraft/jsch/KeyPairDSA;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    :goto_f
    if-eqz v6, :cond_e

    iput-boolean v5, v6, Lcom/jcraft/jsch/KeyPair;->J0:Z

    iput-object v8, v6, Lcom/jcraft/jsch/KeyPair;->QX:[B

    iput v7, v6, Lcom/jcraft/jsch/KeyPair;->VH:I

    iput-object v12, v6, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    iput-object v4, v6, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    if-eqz v5, :cond_4a

    const/4 v4, 0x1

    iput-boolean v4, v6, Lcom/jcraft/jsch/KeyPair;->J0:Z

    iput-object v2, v6, Lcom/jcraft/jsch/KeyPair;->Ws:[B

    iput-object v3, v6, Lcom/jcraft/jsch/KeyPair;->J8:[B

    :cond_e
    move-object v2, v6

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1

    :cond_10
    aget-byte v2, p1, v9

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_11

    add-int/lit8 v2, v9, 0x4

    if-ge v2, v3, :cond_11

    add-int/lit8 v4, v9, 0x1

    aget-byte v4, p1, v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_11

    add-int/lit8 v4, v9, 0x2

    aget-byte v4, p1, v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_11

    add-int/lit8 v4, v9, 0x3

    aget-byte v4, p1, v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_11

    aget-byte v2, p1, v2

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_5

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_12
    aget-byte v10, p1, v9

    const/16 v8, 0x42

    if-ne v10, v8, :cond_1a

    add-int/lit8 v8, v9, 0x3

    if-ge v8, v3, :cond_1a

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, p1, v11

    const/16 v12, 0x45

    if-ne v11, v12, :cond_1a

    add-int/lit8 v11, v9, 0x2

    aget-byte v11, p1, v11

    const/16 v12, 0x47

    if-ne v11, v12, :cond_1a

    aget-byte v8, p1, v8

    const/16 v11, 0x49

    if-ne v8, v11, :cond_1a

    add-int/lit8 v8, v9, 0x6

    add-int/lit8 v6, v8, 0x2

    if-ge v6, v3, :cond_19

    aget-byte v10, p1, v8

    const/16 v9, 0x44

    if-ne v10, v9, :cond_14

    add-int/lit8 v9, v8, 0x1

    aget-byte v9, p1, v9

    const/16 v11, 0x53

    if-ne v9, v11, :cond_14

    aget-byte v9, p1, v6

    const/16 v11, 0x41

    if-ne v9, v11, :cond_14

    const/4 v6, 0x1

    :goto_10
    add-int/lit8 v8, v8, 0x3

    :cond_13
    :goto_11
    move v9, v8

    goto/16 :goto_3

    :cond_14
    const/16 v9, 0x52

    if-ne v10, v9, :cond_15

    add-int/lit8 v9, v8, 0x1

    aget-byte v9, p1, v9

    const/16 v11, 0x53

    if-ne v9, v11, :cond_15

    aget-byte v9, p1, v6

    const/16 v11, 0x41

    if-ne v9, v11, :cond_15

    const/4 v6, 0x2

    goto :goto_10

    :cond_15
    const/16 v7, 0x53

    if-ne v10, v7, :cond_16

    add-int/lit8 v7, v8, 0x1

    aget-byte v7, p1, v7

    const/16 v9, 0x53

    if-ne v7, v9, :cond_16

    aget-byte v7, p1, v6

    const/16 v9, 0x48

    if-ne v7, v9, :cond_16

    const/4 v6, 0x3

    const/4 v7, 0x1

    goto :goto_10

    :cond_16
    add-int/lit8 v7, v8, 0x6

    if-ge v7, v3, :cond_17

    const/16 v9, 0x50

    if-ne v10, v9, :cond_17

    add-int/lit8 v9, v8, 0x1

    aget-byte v9, p1, v9

    const/16 v11, 0x52

    if-ne v9, v11, :cond_17

    aget-byte v9, p1, v6

    const/16 v11, 0x49

    if-ne v9, v11, :cond_17

    add-int/lit8 v9, v8, 0x3

    aget-byte v11, p1, v9

    const/16 v12, 0x56

    if-ne v11, v12, :cond_17

    add-int/lit8 v11, v8, 0x4

    aget-byte v11, p1, v11

    const/16 v12, 0x41

    if-ne v11, v12, :cond_17

    add-int/lit8 v11, v8, 0x5

    aget-byte v11, p1, v11

    const/16 v12, 0x54

    if-ne v11, v12, :cond_17

    aget-byte v11, p1, v7

    const/16 v12, 0x45

    if-ne v11, v12, :cond_17

    const/4 v6, 0x3

    const/4 v7, 0x3

    const/4 v5, 0x0

    move v8, v9

    goto :goto_10

    :cond_17
    add-int/lit8 v11, v8, 0x8

    if-ge v11, v3, :cond_18

    const/16 v9, 0x45

    if-ne v10, v9, :cond_18

    add-int/lit8 v9, v8, 0x1

    aget-byte v9, p1, v9

    const/16 v10, 0x4e

    if-ne v9, v10, :cond_18

    aget-byte v6, p1, v6

    const/16 v9, 0x43

    if-ne v6, v9, :cond_18

    add-int/lit8 v6, v8, 0x3

    aget-byte v6, p1, v6

    const/16 v9, 0x52

    if-ne v6, v9, :cond_18

    add-int/lit8 v6, v8, 0x4

    aget-byte v6, p1, v6

    const/16 v9, 0x59

    if-ne v6, v9, :cond_18

    add-int/lit8 v9, v8, 0x5

    aget-byte v6, p1, v9

    const/16 v10, 0x50

    if-ne v6, v10, :cond_18

    aget-byte v6, p1, v7

    const/16 v7, 0x54

    if-ne v6, v7, :cond_18

    add-int/lit8 v6, v8, 0x7

    aget-byte v6, p1, v6

    const/16 v7, 0x45

    if-ne v6, v7, :cond_18

    aget-byte v6, p1, v11

    const/16 v7, 0x44

    if-ne v6, v7, :cond_18

    const/4 v6, 0x3

    const/4 v7, 0x3

    move v8, v9

    goto/16 :goto_10

    :cond_18
    :try_start_6
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid privatekey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v2

    instance-of v3, v2, Lcom/jcraft/jsch/JSchException;

    if-nez v3, :cond_4d

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_19
    :try_start_7
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid privatekey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_1a
    const/16 v8, 0x41

    if-ne v10, v8, :cond_1c

    add-int/lit8 v8, v9, 0x7

    if-ge v8, v3, :cond_1c

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, p1, v11

    const/16 v12, 0x45

    if-ne v11, v12, :cond_1c

    add-int/lit8 v11, v9, 0x2

    aget-byte v11, p1, v11

    const/16 v12, 0x53

    if-ne v11, v12, :cond_1c

    add-int/lit8 v11, v9, 0x3

    aget-byte v11, p1, v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_1c

    add-int/lit8 v11, v9, 0x4

    aget-byte v11, p1, v11

    const/16 v12, 0x32

    if-ne v11, v12, :cond_1c

    add-int/lit8 v11, v9, 0x5

    aget-byte v11, p1, v11

    const/16 v12, 0x35

    if-ne v11, v12, :cond_1c

    add-int/lit8 v11, v9, 0x6

    aget-byte v11, p1, v11

    const/16 v12, 0x36

    if-ne v11, v12, :cond_1c

    aget-byte v8, p1, v8

    const/16 v11, 0x2d

    if-ne v8, v11, :cond_1c

    add-int/lit8 v8, v9, 0x8

    :try_start_8
    const-string v2, "aes256-cbc"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "aes256-cbc"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Cipher;

    invoke-interface {v2}, Lcom/jcraft/jsch/Cipher;->FH()I

    move-result v9

    move-object v4, v2

    :goto_12
    new-array v2, v9, [B

    goto/16 :goto_11

    :cond_1b
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "privatekey: aes256-cbc is not available "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_1c
    const/16 v8, 0x41

    if-ne v10, v8, :cond_1e

    add-int/lit8 v8, v9, 0x7

    if-ge v8, v3, :cond_1e

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, p1, v11

    const/16 v12, 0x45

    if-ne v11, v12, :cond_1e

    add-int/lit8 v11, v9, 0x2

    aget-byte v11, p1, v11

    const/16 v12, 0x53

    if-ne v11, v12, :cond_1e

    add-int/lit8 v11, v9, 0x3

    aget-byte v11, p1, v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_1e

    add-int/lit8 v11, v9, 0x4

    aget-byte v11, p1, v11

    const/16 v12, 0x31

    if-ne v11, v12, :cond_1e

    add-int/lit8 v11, v9, 0x5

    aget-byte v11, p1, v11

    const/16 v12, 0x39

    if-ne v11, v12, :cond_1e

    add-int/lit8 v11, v9, 0x6

    aget-byte v11, p1, v11

    const/16 v12, 0x32

    if-ne v11, v12, :cond_1e

    aget-byte v8, p1, v8

    const/16 v11, 0x2d

    if-ne v8, v11, :cond_1e

    add-int/lit8 v8, v9, 0x8

    :try_start_9
    const-string v2, "aes192-cbc"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "aes192-cbc"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Cipher;

    invoke-interface {v2}, Lcom/jcraft/jsch/Cipher;->FH()I

    move-result v9

    move-object v4, v2

    goto :goto_12

    :cond_1d
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "privatekey: aes192-cbc is not available "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :cond_1e
    const/16 v8, 0x41

    if-ne v10, v8, :cond_20

    add-int/lit8 v8, v9, 0x7

    if-ge v8, v3, :cond_20

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, p1, v11

    const/16 v12, 0x45

    if-ne v11, v12, :cond_20

    add-int/lit8 v11, v9, 0x2

    aget-byte v11, p1, v11

    const/16 v12, 0x53

    if-ne v11, v12, :cond_20

    add-int/lit8 v11, v9, 0x3

    aget-byte v11, p1, v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_20

    add-int/lit8 v11, v9, 0x4

    aget-byte v11, p1, v11

    const/16 v12, 0x31

    if-ne v11, v12, :cond_20

    add-int/lit8 v11, v9, 0x5

    aget-byte v11, p1, v11

    const/16 v12, 0x32

    if-ne v11, v12, :cond_20

    add-int/lit8 v11, v9, 0x6

    aget-byte v11, p1, v11

    const/16 v12, 0x38

    if-ne v11, v12, :cond_20

    aget-byte v8, p1, v8

    const/16 v11, 0x2d

    if-ne v8, v11, :cond_20

    add-int/lit8 v8, v9, 0x8

    :try_start_a
    const-string v2, "aes128-cbc"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "aes128-cbc"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Cipher;

    invoke-interface {v2}, Lcom/jcraft/jsch/Cipher;->FH()I

    move-result v9

    move-object v4, v2

    goto/16 :goto_12

    :cond_1f
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "privatekey: aes128-cbc is not available "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_20
    const/16 v8, 0x43

    if-ne v10, v8, :cond_21

    add-int/lit8 v8, v9, 0x3

    if-ge v8, v3, :cond_21

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, p1, v11

    const/16 v12, 0x42

    if-ne v11, v12, :cond_21

    add-int/lit8 v11, v9, 0x2

    aget-byte v11, p1, v11

    const/16 v12, 0x43

    if-ne v11, v12, :cond_21

    aget-byte v8, p1, v8

    const/16 v11, 0x2c

    if-ne v8, v11, :cond_21

    add-int/lit8 v8, v9, 0x4

    const/4 v9, 0x0

    :goto_13
    :try_start_b
    array-length v10, v2

    if-ge v9, v10, :cond_13

    add-int/lit8 v10, v8, 0x1

    aget-byte v8, p1, v8

    invoke-static {v8}, Lcom/jcraft/jsch/KeyPair;->j6(B)B

    move-result v11

    add-int/lit8 v8, v10, 0x1

    shl-int/lit8 v11, v11, 0x4

    and-int/lit16 v11, v11, 0xf0

    aget-byte v10, p1, v10

    invoke-static {v10}, Lcom/jcraft/jsch/KeyPair;->j6(B)B

    move-result v10

    and-int/lit8 v10, v10, 0xf

    add-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_21
    const/16 v8, 0xd

    if-ne v10, v8, :cond_22

    add-int/lit8 v8, v9, 0x1

    move-object/from16 v0, p1

    array-length v11, v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    if-ge v8, v11, :cond_22

    aget-byte v11, p1, v8

    const/16 v12, 0xa

    if-eq v11, v12, :cond_13

    :cond_22
    const/16 v8, 0xa

    if-ne v10, v8, :cond_4e

    add-int/lit8 v8, v9, 0x1

    :try_start_c
    move-object/from16 v0, p1

    array-length v10, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    if-ge v8, v10, :cond_4e

    aget-byte v10, p1, v8

    const/16 v11, 0xa

    if-ne v10, v11, :cond_23

    add-int/lit8 v8, v9, 0x2

    goto/16 :goto_4

    :cond_23
    const/16 v11, 0xd

    if-ne v10, v11, :cond_24

    add-int/lit8 v10, v9, 0x2

    :try_start_d
    move-object/from16 v0, p1

    array-length v11, v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    if-ge v10, v11, :cond_24

    aget-byte v10, p1, v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_24

    add-int/lit8 v8, v9, 0x3

    goto/16 :goto_4

    :cond_24
    move v10, v8

    :goto_14
    :try_start_e
    move-object/from16 v0, p1

    array-length v11, v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    if-lt v10, v11, :cond_26

    :cond_25
    const/4 v10, 0x0

    :goto_15
    if-nez v10, :cond_4e

    const/4 v9, 0x3

    if-eq v7, v9, :cond_6

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_26
    aget-byte v11, p1, v10

    const/16 v12, 0xa

    if-eq v11, v12, :cond_25

    const/16 v12, 0x3a

    if-ne v11, v12, :cond_4c

    const/4 v10, 0x1

    goto :goto_15

    :cond_27
    aget-byte v10, p1, v5

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_28
    aget-byte v3, v10, v8

    const/16 v11, 0xa

    if-ne v3, v11, :cond_2a

    add-int/lit8 v3, v8, -0x1

    aget-byte v3, v10, v3

    const/16 v11, 0xd

    if-ne v3, v11, :cond_29

    const/4 v3, 0x1

    :goto_16
    add-int/lit8 v11, v8, 0x1

    sub-int v12, v8, v3

    sub-int v13, v5, v11

    :try_start_f
    invoke-static {v10, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v3, :cond_53

    add-int/lit8 v3, v5, -0x1

    :goto_17
    add-int/lit8 v5, v3, -0x1

    goto/16 :goto_7

    :cond_29
    const/4 v3, 0x0

    goto :goto_16

    :cond_2a
    const/16 v11, 0x2d

    if-eq v3, v11, :cond_8

    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_7

    :cond_2b
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_2c
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid privatekey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2d
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid privatekey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_2f
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->FH()I

    array-length v2, v3

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->gn()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-virtual {v5, v2}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown privatekey format: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :cond_30
    move v5, v9

    goto/16 :goto_a

    :cond_31
    const/4 v11, 0x1

    move v10, v8

    goto/16 :goto_b

    :cond_32
    aget-byte v8, p2, v10

    const/16 v9, 0xa

    if-ne v8, v9, :cond_39

    add-int/lit8 v9, v10, 0x1

    move v8, v9

    :goto_18
    :try_start_10
    move-object/from16 v0, p2

    array-length v14, v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    if-lt v8, v14, :cond_34

    :cond_33
    const/4 v8, 0x0

    :goto_19
    if-eqz v8, :cond_b

    move-object v8, v12

    :goto_1a
    add-int/lit8 v10, v10, 0x1

    move-object v12, v8

    goto/16 :goto_b

    :cond_34
    aget-byte v14, p2, v8

    const/16 v15, 0xa

    if-eq v14, v15, :cond_33

    const/16 v15, 0x3a

    if-ne v14, v15, :cond_38

    const/4 v8, 0x1

    goto :goto_19

    :cond_35
    aget-byte v13, p2, v10

    const/16 v14, 0xa

    if-ne v13, v14, :cond_36

    add-int/lit8 v13, v10, 0x1

    sub-int v14, v11, v10

    add-int/lit8 v14, v14, -0x1

    :try_start_11
    move-object/from16 v0, p2

    move-object/from16 v1, p2

    invoke-static {v0, v13, v1, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_d

    :cond_36
    const/16 v14, 0x2d

    if-eq v13, v14, :cond_c

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_d

    :cond_37
    const/16 v10, 0x72

    if-ne v9, v10, :cond_50

    const/4 v6, 0x2

    goto/16 :goto_e

    :cond_38
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_39
    move-object v8, v12

    goto :goto_1a

    :cond_3a
    const-string v9, ""

    const/4 v8, 0x0

    aget-byte v8, p2, v8

    const/16 v10, 0x73

    if-ne v8, v10, :cond_46

    const/4 v8, 0x1

    aget-byte v8, p2, v8

    const/16 v10, 0x73

    if-ne v8, v10, :cond_46

    const/4 v8, 0x2

    aget-byte v8, p2, v8

    const/16 v10, 0x68

    if-ne v8, v10, :cond_46

    const/4 v8, 0x3

    aget-byte v8, p2, v8

    const/16 v10, 0x2d

    if-ne v8, v10, :cond_46

    if-nez p1, :cond_3b

    :try_start_12
    move-object/from16 v0, p2

    array-length v8, v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    const/4 v10, 0x7

    if-le v8, v10, :cond_3b

    const/4 v8, 0x4

    aget-byte v8, p2, v8

    const/16 v10, 0x64

    if-ne v8, v10, :cond_40

    const/4 v6, 0x1

    :cond_3b
    :goto_1b
    const/4 v8, 0x0

    :goto_1c
    if-lt v8, v13, :cond_41

    :cond_3c
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v13, :cond_43

    move v11, v8

    :goto_1d
    if-lt v11, v13, :cond_42

    :cond_3d
    sub-int v10, v11, v8

    :try_start_13
    move-object/from16 v0, p2

    invoke-static {v0, v8, v10}, Lcom/jcraft/jsch/Util;->DW([BII)[B
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    move-result-object v10

    move v8, v11

    :goto_1e
    add-int/lit8 v12, v8, 0x1

    if-ge v8, v13, :cond_4f

    move v11, v12

    :goto_1f
    if-lt v11, v13, :cond_44

    :cond_3e
    if-lez v11, :cond_3f

    add-int/lit8 v8, v11, -0x1

    aget-byte v13, p2, v8

    const/16 v14, 0xd

    if-ne v13, v14, :cond_3f

    move v11, v8

    :cond_3f
    if-ge v12, v11, :cond_4f

    :try_start_14
    new-instance v8, Ljava/lang/String;

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v12, v11}, Ljava/lang/String;-><init>([BII)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    :goto_20
    move-object v12, v8

    move-object v9, v10

    :goto_21
    move-object v8, v9

    goto/16 :goto_e

    :cond_40
    const/16 v10, 0x72

    if-ne v8, v10, :cond_3b

    const/4 v6, 0x2

    goto :goto_1b

    :cond_41
    aget-byte v10, p2, v8

    const/16 v11, 0x20

    if-eq v10, v11, :cond_3c

    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_42
    aget-byte v10, p2, v11

    const/16 v12, 0x20

    if-eq v10, v12, :cond_3d

    add-int/lit8 v11, v11, 0x1

    goto :goto_1d

    :cond_43
    const/4 v10, 0x0

    goto :goto_1e

    :cond_44
    aget-byte v8, p2, v11

    const/16 v14, 0xa

    if-eq v8, v14, :cond_3e

    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    :catch_1
    move-exception v8

    move-object v8, v9

    goto :goto_20

    :catch_2
    move-exception v8

    :cond_45
    const-string v9, ""

    :cond_46
    :goto_22
    const/4 v8, 0x0

    move-object v12, v9

    goto/16 :goto_e

    :cond_47
    const/4 v9, 0x2

    if-ne v6, v9, :cond_48

    new-instance v6, Lcom/jcraft/jsch/KeyPairRSA;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    goto/16 :goto_f

    :cond_48
    const/4 v6, 0x3

    if-ne v7, v6, :cond_49

    new-instance v6, Lcom/jcraft/jsch/KeyPairPKCS8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/jcraft/jsch/KeyPairPKCS8;-><init>(Lcom/jcraft/jsch/JSch;)V

    goto/16 :goto_f

    :cond_49
    const/4 v6, 0x0

    goto/16 :goto_f

    :cond_4a
    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/KeyPair;->FH([B)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v2, 0x0

    iput-boolean v2, v6, Lcom/jcraft/jsch/KeyPair;->J0:Z

    move-object v2, v6

    goto/16 :goto_0

    :cond_4b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid privatekey: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_14

    :cond_4d
    check-cast v2, Lcom/jcraft/jsch/JSchException;

    throw v2

    :cond_4e
    add-int/lit8 v8, v9, 0x1

    goto/16 :goto_11

    :catch_3
    move-exception v8

    goto :goto_22

    :catch_4
    move-exception v8

    move-object v9, v12

    goto :goto_22

    :catch_5
    move-exception v8

    goto :goto_22

    :cond_4f
    move-object v8, v9

    goto/16 :goto_20

    :cond_50
    move-object v9, v8

    goto/16 :goto_21

    :cond_51
    move-object v9, v12

    goto :goto_22

    :cond_52
    move v8, v11

    goto/16 :goto_c

    :cond_53
    move v3, v5

    goto/16 :goto_17
.end method

.method private static j6(Lcom/jcraft/jsch/Buffer;Ljava/util/Hashtable;)Z
    .locals 8

    const/16 v7, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    move v0, v1

    :goto_0
    array-length v4, v5

    if-lt v0, v4, :cond_2

    :cond_0
    move-object v4, v3

    :cond_1
    :goto_1
    if-nez v4, :cond_3

    move v0, v2

    :goto_2
    return v0

    :cond_2
    aget-byte v4, v5, v0

    if-eq v4, v7, :cond_0

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_8

    new-instance v4, Ljava/lang/String;

    sub-int v6, v0, v1

    invoke-direct {v4, v5, v1, v6}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v1, v0, 0x1

    array-length v0, v5

    if-ge v1, v0, :cond_1

    aget-byte v0, v5, v1

    const/16 v6, 0x20

    if-ne v0, v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_3
    array-length v6, v5

    if-lt v0, v6, :cond_5

    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_4

    invoke-virtual {p1, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    :cond_4
    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    aget-byte v6, v5, v0

    if-ne v6, v7, :cond_7

    new-instance v3, Ljava/lang/String;

    sub-int v6, v0, v1

    invoke-direct {v3, v5, v1, v6}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v1, v0, 0x1

    array-length v0, v5

    if-ge v1, v0, :cond_9

    aget-byte v0, v5, v1

    const/16 v5, 0xa

    if-ne v0, v5, :cond_9

    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    move-object v0, v3

    goto :goto_4
.end method

.method private static j6(Lcom/jcraft/jsch/Buffer;I)[B
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v4, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    const/4 v1, 0x0

    :goto_0
    if-gtz p1, :cond_1

    if-eqz v1, :cond_0

    iput v4, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    :cond_0
    return-object v1

    :cond_1
    move v2, v4

    :goto_1
    array-length v0, v6

    if-gt v0, v2, :cond_3

    move-object v0, v1

    :goto_2
    aget-byte v1, v6, v2

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    move-object v1, v0

    move v4, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v6, v2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_6

    if-nez v1, :cond_5

    sub-int v0, v3, v4

    add-int/lit8 v1, v0, -0x1

    new-array v0, v1, [B

    invoke-static {v6, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    array-length v0, v1

    add-int/2addr v0, v3

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    array-length v2, v1

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v1

    sub-int v7, v3, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v4, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v5

    :goto_3
    array-length v4, v1

    if-ge v2, v4, :cond_4

    aput-byte v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method private j6([B[B[B)[B
    .locals 6

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/jcraft/jsch/KeyPair;->j6([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0, p3}, Lcom/jcraft/jsch/Cipher;->j6(I[B[B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->DW([B)V

    array-length v0, p1

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->j6([BII[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method DW([BII)I
    .locals 1

    const/16 v0, 0x30

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0, p3}, Lcom/jcraft/jsch/KeyPair;->j6([BII)I

    move-result v0

    return v0
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
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->QX:[B

    return-object v0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->j6()V

    return-void
.end method

.method j6(I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1

    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-gtz p1, :cond_0

    goto :goto_0
.end method

.method j6([BII)I
    .locals 5

    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-nez v1, :cond_0

    int-to-byte v0, p3

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v2, p2, 0x1

    or-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    move v0, v1

    :goto_1
    if-gtz v0, :cond_1

    add-int v0, v2, v1

    goto :goto_0

    :cond_1
    add-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    and-int/lit16 v4, p3, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    ushr-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method j6([BI[B)I
    .locals 3

    const/4 v0, 0x2

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    array-length v1, p3

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/KeyPair;->j6([BII)I

    move-result v0

    const/4 v1, 0x0

    array-length v2, p3

    invoke-static {p3, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p3

    add-int/2addr v0, v1

    return v0
.end method

.method public j6()V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->we:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->DW([B)V

    return-void
.end method

.method j6(Lcom/jcraft/jsch/KeyPair;)V
    .locals 1

    iget-object v0, p1, Lcom/jcraft/jsch/KeyPair;->QX:[B

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->QX:[B

    iget v0, p1, Lcom/jcraft/jsch/KeyPair;->VH:I

    iput v0, p0, Lcom/jcraft/jsch/KeyPair;->VH:I

    iget-object v0, p1, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    iget-object v0, p1, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    return-void
.end method

.method public j6([B)Z
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->J0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    new-array v1, v0, [B

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->J8:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->Ws:[B

    invoke-direct {p0, v0, v1, v2}, Lcom/jcraft/jsch/KeyPair;->j6([B[B[B)[B

    move-result-object v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->DW([B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPair;->FH([B)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/jcraft/jsch/KeyPair;->J0:Z

    :cond_2
    iget-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->J0:Z

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method j6([B[B)[B
    .locals 11

    const/16 v3, 0x8

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->Zo()Lcom/jcraft/jsch/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->VH()Lcom/jcraft/jsch/HASH;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->tp:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->j6()I

    move-result v6

    new-array v4, v6, [B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->j6()I

    move-result v2

    div-int v7, v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    rem-int v0, v6, v2

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    mul-int/2addr v7, v2

    add-int/2addr v7, v0

    :try_start_1
    new-array v8, v7, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v0, p0, Lcom/jcraft/jsch/KeyPair;->VH:I

    if-nez v0, :cond_7

    :goto_1
    add-int v0, v1, v2

    if-le v0, v7, :cond_4

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v8, v0, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v4

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    :try_start_3
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    const/4 v9, 0x0

    array-length v10, v5

    invoke-interface {v0, v5, v9, v10}, Lcom/jcraft/jsch/HASH;->update([BII)V

    :cond_5
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    const/4 v5, 0x0

    array-length v9, p1

    invoke-interface {v0, p1, v5, v9}, Lcom/jcraft/jsch/HASH;->update([BII)V

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    array-length v0, p2

    if-le v0, v3, :cond_6

    move v0, v3

    :goto_3
    const/4 v9, 0x0

    invoke-interface {v5, p2, v9, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v5

    const/4 v0, 0x0

    array-length v9, v5

    invoke-static {v5, v0, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v5

    add-int/2addr v1, v0

    goto :goto_1

    :cond_6
    array-length v0, p2

    goto :goto_3

    :cond_7
    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    move-object v0, v5

    :goto_4
    add-int v3, v1, v2

    if-gt v3, v7, :cond_2

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    const/4 v5, 0x0

    array-length v9, v0

    invoke-interface {v3, v0, v5, v9}, Lcom/jcraft/jsch/HASH;->update([BII)V

    :cond_8
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    const/4 v3, 0x0

    array-length v5, p1

    invoke-interface {v0, p1, v3, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->EQ:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v0

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v8, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v0

    add-int/2addr v1, v3

    goto :goto_4

    :cond_9
    if-ne v0, v9, :cond_b

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

    const/16 v2, 0x28

    new-array v2, v2, [B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    if-lt v1, v9, :cond_a

    move-object v0, v2

    goto :goto_2

    :cond_a
    :try_start_4
    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->DW()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, 0x3

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    :try_start_5
    invoke-interface {v0, v3, v4, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    const/4 v4, 0x0

    array-length v5, p1

    invoke-interface {v0, p1, v4, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->FH()[B

    move-result-object v4

    const/4 v5, 0x0

    mul-int/lit8 v6, v1, 0x14

    const/16 v7, 0x14

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catch_0
    move-exception v1

    move-object v0, v4

    :goto_6
    :try_start_6
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    move-object v0, v2

    goto :goto_6

    :cond_b
    move-object v0, v4

    goto/16 :goto_2
.end method

.method public v5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->J0:Z

    return v0
.end method
