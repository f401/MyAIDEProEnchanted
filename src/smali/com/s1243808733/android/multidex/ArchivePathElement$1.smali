.class Lcom/s1243808733/android/multidex/ArchivePathElement$1;
.super Ljava/lang/Object;
.source "ArchivePathElement.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/multidex/ArchivePathElement;->list()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/multidex/ArchivePathElement;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/multidex/ArchivePathElement;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/s1243808733/android/multidex/ArchivePathElement$1;->this$0:Lcom/s1243808733/android/multidex/ArchivePathElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/multidex/ArchivePathElement$1$1;-><init>(Lcom/s1243808733/android/multidex/ArchivePathElement$1;)V

    return-object v0
.end method
