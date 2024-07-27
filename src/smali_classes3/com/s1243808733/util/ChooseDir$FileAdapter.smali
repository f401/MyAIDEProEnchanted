.class Lcom/s1243808733/util/ChooseDir$FileAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooseDir.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/util/ChooseDir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;,
        Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentDir:Ljava/io/File;

.field private datalist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlertDialog;)V
    .registers 5

    .line 134
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->datalist:Ljava/util/List;

    .line 135
    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->context:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->dialog:Landroid/app/AlertDialog;

    .line 137
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000005;

    invoke-direct {v1, p0}, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000005;-><init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$1000012(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Z
    .registers 2

    invoke-direct {p0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->goBack()Z

    move-result v0

    return v0
.end method

.method static synthetic access$L1000010(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->currentDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$S1000010(Lcom/s1243808733/util/ChooseDir$FileAdapter;Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->currentDir:Ljava/io/File;

    return-void
.end method

.method private goBack()Z
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->currentDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->currentDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->loadDir(Ljava/io/File;)V

    .line 159
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->datalist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->datalist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    return-object v0
.end method

.method public bridge getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->getItem(I)Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 283
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 227
    if-nez p2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 230
    new-instance v0, Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;-><init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;Landroid/view/View;)V

    .line 231
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 236
    :goto_0
    invoke-virtual {p0, p1}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->getItem(I)Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    move-result-object v1

    .line 237
    iget-boolean v2, v1, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->isBack:Z

    if-eqz v2, :cond_1

    .line 238
    iget-object v0, v0, Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const-string v1, ".../"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_1
    return-object p2

    .line 233
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;

    goto :goto_0

    .line 240
    :cond_1
    iget-object v1, v1, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->file:Ljava/io/File;

    .line 241
    iget-object v0, v0, Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public loadDir(Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 170
    if-nez p1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->currentDir:Ljava/io/File;

    .line 173
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    const/4 v0, 0x0

    check-cast v0, [Ljava/io/File;

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    new-array v0, v5, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    const-string v4, "/storage"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    .line 194
    :goto_1
    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/storage/emulated"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    new-array v0, v5, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    const-string v4, "0"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v1

    .line 203
    :cond_1
    :goto_2
    array-length v3, v0

    if-lt v1, v3, :cond_4

    .line 205
    new-instance v0, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000007;

    invoke-direct {v0, p0}, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000007;-><init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    iput-object v2, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->datalist:Ljava/util/List;

    .line 222
    invoke-virtual {p0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 184
    :cond_2
    new-instance v0, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    invoke-direct {v0, p0, v5}, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;-><init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;Z)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000006;

    invoke-direct {v0, p0}, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000006;-><init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 198
    :cond_3
    new-array v0, v1, [Ljava/io/File;

    goto :goto_2

    .line 202
    :cond_4
    aget-object v3, v0, v1

    .line 203
    new-instance v4, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    invoke-direct {v4, p0, v3}, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;-><init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;Ljava/io/File;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public reload()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->currentDir:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->loadDir(Ljava/io/File;)V

    return-void
.end method
