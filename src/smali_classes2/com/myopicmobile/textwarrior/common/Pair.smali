.class public final Lcom/myopicmobile/textwarrior/common/Pair;
.super Ljava/lang/Object;


# instance fields
.field private _first:I

.field private _second:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/myopicmobile/textwarrior/common/Pair;->_first:I

    iput p2, p0, Lcom/myopicmobile/textwarrior/common/Pair;->_second:I

    return-void
.end method


# virtual methods
.method public final getFirst()I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/Pair;->_first:I

    return v0
.end method

.method public final getSecond()I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/Pair;->_second:I

    return v0
.end method

.method public final setFirst(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput p1, p0, Lcom/myopicmobile/textwarrior/common/Pair;->_first:I

    return-void
.end method

.method public final setSecond(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput p1, p0, Lcom/myopicmobile/textwarrior/common/Pair;->_second:I

    return-void
.end method
