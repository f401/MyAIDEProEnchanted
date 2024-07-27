.class Labcd/kw$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/kw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private DW:I

.field private j6:[Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Enumeration",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/util/Enumeration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Enumeration",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/kw$a;->DW:I

    iput-object p1, p0, Labcd/kw$a;->j6:[Ljava/util/Enumeration;

    return-void
.end method

.method private j6()Z
    .registers 4

    :goto_0
    iget v0, p0, Labcd/kw$a;->DW:I

    iget-object v1, p0, Labcd/kw$a;->j6:[Ljava/util/Enumeration;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Labcd/kw$a;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/kw$a;->DW:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    invoke-direct {p0}, Labcd/kw$a;->j6()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Labcd/kw$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/kw$a;->j6:[Ljava/util/Enumeration;

    iget v1, p0, Labcd/kw$a;->DW:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
