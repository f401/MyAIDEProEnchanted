.class final enum Lcom/sun/tools/javac/file/JavacFileManager$SortFiles$1;
.super Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;
.source "JavacFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 883
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;-><init>(Ljava/lang/String;ILcom/sun/tools/javac/file/JavacFileManager$1;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 5

    .line 885
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 883
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
