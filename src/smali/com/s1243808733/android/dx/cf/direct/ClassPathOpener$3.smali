.class Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$3;
.super Ljava/lang/Object;
.source "ClassPathOpener.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->processArchive(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$3;->this$0:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 250
    check-cast p1, Ljava/util/zip/ZipEntry;

    check-cast p2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$3;->compare(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;)I
    .registers 3

    .line 253
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->-$$Nest$smcompareClassNames(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
