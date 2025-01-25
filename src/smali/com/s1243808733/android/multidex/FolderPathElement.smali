.class Lcom/s1243808733/android/multidex/FolderPathElement;
.super Ljava/lang/Object;
.source "FolderPathElement.java"

# interfaces
.implements Lcom/s1243808733/android/multidex/ClassPathElement;


# instance fields
.field private final baseFolder:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/s1243808733/android/multidex/FolderPathElement;->baseFolder:Ljava/io/File;

    return-void
.end method

.method private collect(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_48

    aget-object v2, p1, v1

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/16 v4, 0x2f

    if-eqz v3, :cond_2c

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p3}, Lcom/s1243808733/android/multidex/FolderPathElement;->collect(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_45

    .line 58
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_48
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public list()Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/s1243808733/android/multidex/FolderPathElement;->baseFolder:Ljava/io/File;

    const-string v2, ""

    invoke-direct {p0, v1, v2, v0}, Lcom/s1243808733/android/multidex/FolderPathElement;->collect(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public open(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/s1243808733/android/multidex/FolderPathElement;->baseFolder:Ljava/io/File;

    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 39
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    const/16 v4, 0x2f

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v2
.end method
