.class Lcom/s1243808733/android/multidex/ArchivePathElement$100000001;
.super Ljava/lang/Object;
.source "ArchivePathElement.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/android/multidex/ArchivePathElement;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/multidex/ArchivePathElement;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001;->this$0:Lcom/s1243808733/android/multidex/ArchivePathElement;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/multidex/ArchivePathElement$100000001;)Lcom/s1243808733/android/multidex/ArchivePathElement;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001;->this$0:Lcom/s1243808733/android/multidex/ArchivePathElement;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 65
    new-instance v0, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/multidex/ArchivePathElement$100000001$100000000;-><init>(Lcom/s1243808733/android/multidex/ArchivePathElement$100000001;)V

    return-object v0
.end method
