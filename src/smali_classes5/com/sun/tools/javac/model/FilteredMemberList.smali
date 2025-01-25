.class public Lcom/sun/tools/javac/model/FilteredMemberList;
.super Ljava/util/AbstractList;
.source "FilteredMemberList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/sun/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field private final scope:Lcom/sun/tools/javac/code/Scope;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Scope;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sun/tools/javac/model/FilteredMemberList;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/model/FilteredMemberList;)Lcom/sun/tools/javac/code/Scope;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/sun/tools/javac/model/FilteredMemberList;->scope:Lcom/sun/tools/javac/code/Scope;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 2

    .line 46
    invoke-static {p0}, Lcom/sun/tools/javac/model/FilteredMemberList;->unwanted(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    return v0
.end method

.method private static unwanted(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 5

    .line 113
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public get(I)Lcom/sun/tools/javac/code/Symbol;
    .registers 5

    .line 64
    iget-object v0, p0, Lcom/sun/tools/javac/model/FilteredMemberList;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v1, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move v0, p1

    :goto_5
    if-eqz v1, :cond_19

    .line 65
    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v2}, Lcom/sun/tools/javac/model/FilteredMemberList;->unwanted(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v2

    if-nez v2, :cond_16

    if-nez v0, :cond_14

    .line 66
    iget-object v0, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    return-object v0

    .line 65
    :cond_14
    add-int/lit8 v0, v0, -0x1

    .line 64
    :cond_16
    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_5

    .line 68
    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 46
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/model/FilteredMemberList;->get(I)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/sun/tools/javac/model/FilteredMemberList$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/model/FilteredMemberList$1;-><init>(Lcom/sun/tools/javac/model/FilteredMemberList;)V

    return-object v0
.end method

.method public size()I
    .registers 4

    .line 55
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/sun/tools/javac/model/FilteredMemberList;->scope:Lcom/sun/tools/javac/code/Scope;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    :goto_5
    if-eqz v1, :cond_14

    .line 57
    iget-object v2, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v2}, Lcom/sun/tools/javac/model/FilteredMemberList;->unwanted(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 56
    :cond_11
    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_5

    .line 60
    :cond_14
    return v0
.end method
