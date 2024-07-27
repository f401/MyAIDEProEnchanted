.class public Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "TokenFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/TokenFilter$Filter;
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/TokenFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteCharacters"
.end annotation


# instance fields
.field private deleteChars:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 603
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 607
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;->deleteChars:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;C)Z
    .registers 3

    .line 603
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;->isDeleteCharacter(C)Z

    move-result v0

    return v0
.end method

.method private isDeleteCharacter(C)Z
    .registers 5

    const/4 v1, 0x0

    .line 667
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;->deleteChars:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 668
    iget-object v2, p0, Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;->deleteChars:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_1

    .line 669
    const/4 v1, 0x1

    .line 672
    :cond_0
    return v1

    .line 667
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 3

    .line 641
    new-instance v0, Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters$1;-><init>(Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;Ljava/io/Reader;)V

    return-object v0
.end method

.method public filter(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 624
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 625
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 626
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;->isDeleteCharacter(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setChars(Ljava/lang/String;)V
    .registers 3

    .line 614
    invoke-static {p1}, Lorg/apache/tools/ant/filters/TokenFilter;->resolveBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;->deleteChars:Ljava/lang/String;

    .line 615
    return-void
.end method
