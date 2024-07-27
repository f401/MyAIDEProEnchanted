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
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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

    .line 194
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 196
    :goto_0
    return-object p1

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getIntFromString(Ljava/lang/String;)I
    .registers 4

    .line 184
    const-string v0, "[^\\d]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const/4 v0, -0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
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

    if-eqz v1, :cond_0

    .line 178
    :goto_0
    return-object p1

    :cond_0
    const-string v1, " "

    invoke-static {v0, v1}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-direct {p0, p2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-direct {p0, v2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->getNameFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-direct {p0, v3}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->getNameFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 160
    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0, v2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->getIntFromString(Ljava/lang/String;)I

    move-result v0

    .line 162
    invoke-direct {p0, v3}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;->getIntFromString(Ljava/lang/String;)I

    move-result v2

    .line 163
    invoke-static {v0, v2}, Ljava/lang/Integer;->compare(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    move v0, v1

    .line 170
    goto :goto_0
.end method
