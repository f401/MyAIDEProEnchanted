.class Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$100000002;
.super Ljava/lang/Object;
.source "ClassPathOpener.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$100000002;->this$0:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$100000002;)Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$100000002;->this$0:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;

    return-object v0
.end method


# virtual methods
.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/util/zip/ZipEntry;

    check-cast p2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$100000002;->compare(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;)I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 253
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->access$1000006(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
