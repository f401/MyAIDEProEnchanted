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

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgroovyjarjarantlr/ANTLRHashString;->DW:[C

    aget-char v0, v0, p1

    goto :goto_0
.end method

.method private final j6()I
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/ANTLRHashString;->j6:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lgroovyjarjarantlr/ANTLRHashString;->FH:I

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x0

    instance-of v0, p1, Lgroovyjarjarantlr/ANTLRHashString;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lgroovyjarjarantlr/ANTLRHashString;

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    invoke-direct {v0, p1, v2}, Lgroovyjarjarantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lgroovyjarjarantlr/CharScanner;)V

    move-object p1, v0

    :goto_1
    invoke-direct {p0}, Lgroovyjarjarantlr/ANTLRHashString;->j6()I

    move-result v2

    invoke-direct {p1}, Lgroovyjarjarantlr/ANTLRHashString;->j6()I

    move-result v0

    if-eq v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    check-cast p1, Lgroovyjarjarantlr/ANTLRHashString;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    invoke-virtual {v0}, Lgroovyjarjarantlr/CharScanner;->DW()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_6

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/ANTLRHashString;->j6(I)C

    move-result v3

    invoke-direct {p1, v0}, Lgroovyjarjarantlr/ANTLRHashString;->j6(I)C

    move-result v4

    if-eq v3, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_6

    iget-object v3, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/ANTLRHashString;->j6(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lgroovyjarjarantlr/CharScanner;->Hw(C)C

    move-result v3

    iget-object v4, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    invoke-direct {p1, v0}, Lgroovyjarjarantlr/ANTLRHashString;->j6(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lgroovyjarjarantlr/CharScanner;->Hw(C)C

    move-result v4

    if-eq v3, v4, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lgroovyjarjarantlr/ANTLRHashString;->j6()I

    move-result v3

    iget-object v0, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    invoke-virtual {v0}, Lgroovyjarjarantlr/CharScanner;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_1

    mul-int/lit16 v0, v0, 0x97

    invoke-direct {p0, v1}, Lgroovyjarjarantlr/ANTLRHashString;->j6(I)C

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v3, :cond_1

    mul-int/lit16 v0, v0, 0x97

    iget-object v2, p0, Lgroovyjarjarantlr/ANTLRHashString;->Hw:Lgroovyjarjarantlr/CharScanner;

    invoke-direct {p0, v1}, Lgroovyjarjarantlr/ANTLRHashString;->j6(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lgroovyjarjarantlr/CharScanner;->Hw(C)C

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lgroovyjarjarantlr/ANTLRHashString;->j6:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lgroovyjarjarantlr/ANTLRHashString;->DW:[C

    return-void
.end method

.method public j6([CI)V
    .registers 4

    iput-object p1, p0, Lgroovyjarjarantlr/ANTLRHashString;->DW:[C

    iput p2, p0, Lgroovyjarjarantlr/ANTLRHashString;->FH:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgroovyjarjarantlr/ANTLRHashString;->j6:Ljava/lang/String;

    return-void
.end method
