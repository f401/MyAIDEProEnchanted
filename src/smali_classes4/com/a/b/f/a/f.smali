.class enum Lcom/a/b/f/a/f;
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
    .registers 4

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    return v0
.end method
