.class Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;
.super Ljava/lang/Object;
.source "FileBrowserListener.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/filebrowser/FileBrowserListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final type:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->list:Ljava/util/List;

    .line 144
    iput p2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->type:I

    return-void
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 193
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return-object p1

    .line 195
    :cond_a
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getIntFromString(Ljava/lang/String;)I
    .registers 4

    .line 184
    const-string v0, "[^\\d]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, -0x1

    return p1

    .line 188
    :cond_10
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getNameFromString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 175
    const-string v0, "\\d+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    return-object p1

    .line 178
    :cond_f
    const-string p1, " "

    invoke-static {v0, p1}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 138
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-direct {p0, p2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 154
    invoke-direct {p0, p1}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->getNameFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-direct {p0, p2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->getNameFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    .line 161
    invoke-direct {p0, p1}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->getIntFromString(Ljava/lang/String;)I

    move-result p1

    .line 162
    invoke-direct {p0, p2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->getIntFromString(Ljava/lang/String;)I

    move-result p2

    .line 163
    invoke-static {p1, p2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator$$ExternalSyntheticBackport0;->m(II)I

    move-result v0
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    :cond_22
    return v0

    :catchall_23
    move-exception p1

    .line 168
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    return v0
.end method
