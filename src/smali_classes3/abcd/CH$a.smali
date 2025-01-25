.class Labcd/CH$a;
.super Ljava/lang/ref/SoftReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/CH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference<",
        "[B>;"
    }
.end annotation


# instance fields
.field final j6:I


# direct methods
.method constructor <init>([BLjava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/ref/ReferenceQueue<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    array-length p1, p1

    iput p1, p0, Labcd/CH$a;->j6:I

    return-void
.end method
