.class enum Lcom/a/b/f/a/e;
.super Lcom/a/b/f/a/c;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/b/f/a/c;-><init>(Ljava/lang/String;ILcom/a/b/f/a/c;)V

    return-void
.end method


# virtual methods
.method a(Ljava/util/BitSet;I)I
    .registers 5

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    :goto_4
    invoke-static {v0}, Lcom/a/b/f/a/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    goto :goto_4
.end method
