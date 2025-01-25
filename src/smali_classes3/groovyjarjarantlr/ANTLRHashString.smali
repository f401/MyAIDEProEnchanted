.class public Lgroovyjarjarantlr/ANTLRHashString;
.super Ljava/lang/Object;


# instance fields
.field private DW:[C

.field private FH:I

.field private Hw:Lgroovyjarjarantlr/CharScanner;

.field private j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgroovyjarjarantlr/CharScanner;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgroovyjarjarantlr/CharScanner;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/ANTLRHashString;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private final j6(I)C
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/ANTLRHashString;->j6:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_d

    :cond_9
    iget-object v0, p0, Lgroovyjarjarantlr/ANTLRHashString;->DW:[C

    aget-char p1, v0, p1

    :goto_d
    return p1
.end method

.method private final j6()I
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/ANTLRHashString;->j6:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_b

    :cond_9
    iget v0, p0, Lgroovyjarjarantlr/ANTLRHashString;->FH:I

    :goto_b
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Lgroovyjarjarantlr/ANTLRHashString;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_a

    return v1

    :cond_a
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_18

    new-instance v0, Lgroovyjarjarantlr/ANTLRHashString;

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    invoke-direct {v0, p1, v2}, Lgroovyjarjarantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lgroovyjarjarantlr/CharScanner;)V

    goto :goto_1b

    :cond_18
    move-object v0, p1

    check-cast v0, Lgroovyjarjarantlr/ANTLRHashString;

    :goto_1b
    invoke-direct {p0}, Lgroovyjarjarantlr/ANTLRHashString;->j6()I

    move-result p1

    invoke-direct {v0}, Lgroovyjarjarantlr/ANTLRHashString;->j6()I

    move-result v2

    if-eq v2, p1, :cond_26

    return v1

    :cond_26
    iget-object v2, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    invoke-virtual {v2}, Lgroovyjarjarantlr/CharScanner;->DW()Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, p1, :cond_5c

    invoke-direct {p0, v2}, Lgroovyjarjarantlr/ANTLRHashString;->j6(I)C

    move-result v3

    invoke-direct {v0, v2}, Lgroovyjarjarantlr/ANTLRHashString;->j6(I)C

    move-result v4

    if-eq v3, v4, :cond_3c

    return v1

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_3f
    const/4 v2, 0x0

    :goto_40
    if-ge v2, p1, :cond_5c

    iget-object v3, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    invoke-direct {p0, v2}, Lgroovyjarjarantlr/ANTLRHashString;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/CharScanner;->Hw(C)C

    move-result v3

    iget-object v4, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    invoke-direct {v0, v2}, Lgroovyjarjarantlr/ANTLRHashString;->j6(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lgroovyjarjarantlr/CharScanner;->Hw(C)C

    move-result v4

    if-eq v3, v4, :cond_59

    return v1

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_5c
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 6

    invoke-direct {p0}, Lgroovyjarjarantlr/ANTLRHashString;->j6()I

    move-result v0

    iget-object v1, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    invoke-virtual {v1}, Lgroovyjarjarantlr/CharScanner;->DW()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_2d

    mul-int/lit16 v2, v2, 0x97

    invoke-direct {p0, v1}, Lgroovyjarjarantlr/ANTLRHashString;->j6(I)C

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_2d

    mul-int/lit16 v2, v2, 0x97

    iget-object v3, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    invoke-direct {p0, v1}, Lgroovyjarjarantlr/ANTLRHashString;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/CharScanner;->Hw(C)C

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2d
    return v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lgroovyjarjarantlr/ANTLRHashString;->j6:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lgroovyjarjarantlr/ANTLRHashString;->DW:[C

    return-void
.end method

.method public j6([CI)V
    .registers 3

    iput-object p1, p0, Lgroovyjarjarantlr/ANTLRHashString;->DW:[C

    iput p2, p0, Lgroovyjarjarantlr/ANTLRHashString;->FH:I

    const/4 p1, 0x0

    iput-object p1, p0, Lgroovyjarjarantlr/ANTLRHashString;->j6:Ljava/lang/String;

    return-void
.end method
