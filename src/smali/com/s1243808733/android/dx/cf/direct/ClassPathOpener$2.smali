.class Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$2;
.super Ljava/lang/Object;
.source "ClassPathOpener.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->processDirectory(Ljava/io/File;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$2;->this$0:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 3

    .line 223
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->-$$Nest$smcompareClassNames(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 220
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
