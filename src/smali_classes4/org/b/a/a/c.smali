.class public Lorg/b/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:B

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Z

.field private p:J

.field private q:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .registers 7

    const-wide/16 v4, 0x0

    const/16 v2, 0x1f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ustar\u0000"

    iput-object v0, p0, Lorg/b/a/a/c;->i:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Lorg/b/a/a/c;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/b/a/a/c;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/b/a/a/c;->h:Ljava/lang/String;

    const-string v0, "user.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2a

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2a
    iput-wide v4, p0, Lorg/b/a/a/c;->c:J

    iput-wide v4, p0, Lorg/b/a/a/c;->d:J

    iput-object v0, p0, Lorg/b/a/a/c;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/b/a/a/c;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/b/a/a/c;->q:Ljava/io/File;

    return-void
.end method

.method public constructor <init>([BLorg/b/a/b/e;)V
    .registers 3

    invoke-direct {p0}, Lorg/b/a/a/c;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/b/a/a/c;->a([BLorg/b/a/b/e;)V

    return-void
.end method

.method private a([B)I
    .registers 5

    const/16 v2, 0x101

    const/4 v1, 0x6

    const-string v0, "ustar  "

    invoke-static {v0, p1, v2, v1}, Lorg/b/a/a/c;->a(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    :goto_c
    return v0

    :cond_d
    const-string v0, "ustar\u0000"

    invoke-static {v0, p1, v2, v1}, Lorg/b/a/a/c;->a(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x3

    goto :goto_c

    :cond_17
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x3a

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_40

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_40

    const/16 v1, 0x61

    if-lt v0, v1, :cond_34

    const/16 v1, 0x7a

    if-le v0, v1, :cond_3c

    :cond_34
    const/16 v1, 0x41

    if-lt v0, v1, :cond_40

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_40

    :cond_3c
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_40
    :goto_40
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_48
    if-nez p1, :cond_52

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    :cond_52
    return-object v0

    :cond_53
    const-string v1, "netware"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_40

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_40

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_40

    :cond_68
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_48
.end method

.method private a([BLorg/b/a/b/e;Z)V
    .registers 10

    const/4 v0, 0x0

    const/16 v5, 0xc

    const/16 v4, 0x20

    const/16 v3, 0x64

    const/16 v2, 0x8

    if-eqz p3, :cond_de

    invoke-static {p1, v0, v3}, Lorg/b/a/a/e;->c([BII)Ljava/lang/String;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lorg/b/a/a/c;->a:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lorg/b/a/a/e;->b([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/b/a/a/c;->b:I

    const/16 v0, 0x6c

    invoke-static {p1, v0, v2}, Lorg/b/a/a/e;->b([BII)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/b/a/a/c;->c:J

    const/16 v0, 0x74

    invoke-static {p1, v0, v2}, Lorg/b/a/a/e;->b([BII)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/b/a/a/c;->d:J

    const/16 v0, 0x7c

    invoke-static {p1, v0, v5}, Lorg/b/a/a/e;->b([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/b/a/a/c;->e:J

    const/16 v0, 0x88

    invoke-static {p1, v0, v5}, Lorg/b/a/a/e;->b([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/b/a/a/c;->f:J

    const/16 v0, 0x9c

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lorg/b/a/a/c;->g:B

    if-eqz p3, :cond_e4

    const/16 v0, 0x9d

    invoke-static {p1, v0, v3}, Lorg/b/a/a/e;->c([BII)Ljava/lang/String;

    move-result-object v0

    :goto_4a
    iput-object v0, p0, Lorg/b/a/a/c;->h:Ljava/lang/String;

    const/16 v0, 0x101

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lorg/b/a/a/e;->c([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/b/a/a/c;->i:Ljava/lang/String;

    const/16 v0, 0x107

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lorg/b/a/a/e;->c([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/b/a/a/c;->j:Ljava/lang/String;

    if-eqz p3, :cond_ec

    const/16 v0, 0x109

    invoke-static {p1, v0, v4}, Lorg/b/a/a/e;->c([BII)Ljava/lang/String;

    move-result-object v0

    :goto_66
    iput-object v0, p0, Lorg/b/a/a/c;->k:Ljava/lang/String;

    if-eqz p3, :cond_f4

    const/16 v0, 0x129

    invoke-static {p1, v0, v4}, Lorg/b/a/a/e;->c([BII)Ljava/lang/String;

    move-result-object v0

    :goto_70
    iput-object v0, p0, Lorg/b/a/a/c;->l:Ljava/lang/String;

    const/16 v0, 0x149

    invoke-static {p1, v0, v2}, Lorg/b/a/a/e;->b([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/b/a/a/c;->m:I

    const/16 v0, 0x151

    invoke-static {p1, v0, v2}, Lorg/b/a/a/e;->b([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/b/a/a/c;->n:I

    invoke-direct {p0, p1}, Lorg/b/a/a/c;->a([B)I

    move-result v0

    packed-switch v0, :pswitch_data_116

    if-eqz p3, :cond_10d

    const/16 v0, 0x159

    const/16 v1, 0x9b

    invoke-static {p1, v0, v1}, Lorg/b/a/a/e;->c([BII)Ljava/lang/String;

    move-result-object v0

    :goto_95
    invoke-virtual {p0}, Lorg/b/a/a/c;->j()Z

    move-result v1

    if-eqz v1, :cond_bc

    iget-object v1, p0, Lorg/b/a/a/c;->a:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bc

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/b/a/a/c;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/b/a/a/c;->a:Ljava/lang/String;

    :cond_bc
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_dd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/b/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/b/a/a/c;->a:Ljava/lang/String;

    :cond_dd
    :goto_dd
    return-void

    :cond_de
    invoke-static {p1, v0, v3, p2}, Lorg/b/a/a/e;->a([BIILorg/b/a/b/e;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_e4
    const/16 v0, 0x9d

    invoke-static {p1, v0, v3, p2}, Lorg/b/a/a/e;->a([BIILorg/b/a/b/e;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4a

    :cond_ec
    const/16 v0, 0x109

    invoke-static {p1, v0, v4, p2}, Lorg/b/a/a/e;->a([BIILorg/b/a/b/e;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_66

    :cond_f4
    const/16 v0, 0x129

    invoke-static {p1, v0, v4, p2}, Lorg/b/a/a/e;->a([BIILorg/b/a/b/e;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_70

    :pswitch_fc  #0x2
    const/16 v0, 0x1e2

    invoke-static {p1, v0}, Lorg/b/a/a/e;->a([BI)Z

    move-result v0

    iput-boolean v0, p0, Lorg/b/a/a/c;->o:Z

    const/16 v0, 0x1e3

    invoke-static {p1, v0, v5}, Lorg/b/a/a/e;->a([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/b/a/a/c;->p:J

    goto :goto_dd

    :cond_10d
    const/16 v0, 0x159

    const/16 v1, 0x9b

    invoke-static {p1, v0, v1, p2}, Lorg/b/a/a/e;->a([BIILorg/b/a/b/e;)Ljava/lang/String;

    move-result-object v0

    goto :goto_95

    :pswitch_data_116
    .packed-switch 0x2
        :pswitch_fc  #00000002
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;[BII)Z
    .registers 11

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_11

    move-result-object v0

    array-length v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v1

    invoke-static/range {v0 .. v6}, Lorg/b/a/a/c;->a([BII[BIIZ)Z

    move-result v0

    return v0

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([BII[BIIZ)Z
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p2, p5, :cond_c

    move v0, p2

    :goto_5
    move v3, v2

    :goto_6
    if-lt v3, v0, :cond_e

    if-ne p2, p5, :cond_1d

    move v0, v1

    :goto_b
    return v0

    :cond_c
    move v0, p5

    goto :goto_5

    :cond_e
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    add-int v5, p4, v3

    aget-byte v5, p3, v5

    if-eq v4, v5, :cond_1a

    move v0, v2

    goto :goto_b

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1d
    if-eqz p6, :cond_3d

    if-le p2, p5, :cond_3a

    :goto_21
    if-lt p5, p2, :cond_25

    :goto_23
    move v0, v1

    goto :goto_b

    :cond_25
    add-int v0, p1, p5

    aget-byte v0, p0, v0

    if-eqz v0, :cond_2d

    move v0, v2

    goto :goto_b

    :cond_2d
    add-int/lit8 p5, p5, 0x1

    goto :goto_21

    :cond_30
    add-int v0, p4, p2

    aget-byte v0, p3, v0

    if-eqz v0, :cond_38

    move v0, v2

    goto :goto_b

    :cond_38
    add-int/lit8 p2, p2, 0x1

    :cond_3a
    if-lt p2, p5, :cond_30

    goto :goto_23

    :cond_3d
    move v0, v2

    goto :goto_b
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/b/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 5

    if-gez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Major device number is out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput p1, p0, Lorg/b/a/a/c;->m:I

    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lorg/b/a/a/c;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/b/a/a/c;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/b/a/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public a([BLorg/b/a/b/e;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/b/a/a/c;->a([BLorg/b/a/b/e;Z)V

    return-void
.end method

.method public a(Lorg/b/a/a/c;)Z
    .registers 4

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lorg/b/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/b/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/b/a/a/c;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .registers 5

    if-gez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Minor device number is out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput p1, p0, Lorg/b/a/a/c;->n:I

    return-void
.end method

.method public b(J)V
    .registers 4

    iput-wide p1, p0, Lorg/b/a/a/c;->d:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/b/a/a/c;->h:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/b/a/a/c;->b:I

    return v0
.end method

.method public c(J)V
    .registers 6

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lorg/b/a/a/c;->f:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/b/a/a/c;->k:Ljava/lang/String;

    return-void
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lorg/b/a/a/c;->e:J

    return-wide v0
.end method

.method public d(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size is out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iput-wide p1, p0, Lorg/b/a/a/c;->e:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/b/a/a/c;->l:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lorg/b/a/a/c;->o:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    check-cast p1, Lorg/b/a/a/c;

    invoke-virtual {p0, p1}, Lorg/b/a/a/c;->a(Lorg/b/a/a/c;)Z

    move-result v0

    goto :goto_d
.end method

.method public f()Z
    .registers 3

    iget-byte v0, p0, Lorg/b/a/a/c;->g:B

    const/16 v1, 0x53

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public g()Z
    .registers 3

    iget-byte v0, p0, Lorg/b/a/a/c;->g:B

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public h()Z
    .registers 3

    iget-byte v0, p0, Lorg/b/a/a/c;->g:B

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lorg/b/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 3

    iget-byte v0, p0, Lorg/b/a/a/c;->g:B

    const/16 v1, 0x78

    if-eq v0, v1, :cond_e

    iget-byte v0, p0, Lorg/b/a/a/c;->g:B

    const/16 v1, 0x58

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public j()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/b/a/a/c;->q:Ljava/io/File;

    if-eqz v1, :cond_c

    iget-object v0, p0, Lorg/b/a/a/c;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-byte v1, p0, Lorg/b/a/a/c;->g:B

    const/16 v2, 0x35

    if-eq v1, v2, :cond_b

    invoke-virtual {p0}, Lorg/b/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public k()Z
    .registers 3

    iget-byte v0, p0, Lorg/b/a/a/c;->g:B

    const/16 v1, 0x32

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public l()Z
    .registers 3

    iget-byte v0, p0, Lorg/b/a/a/c;->g:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
