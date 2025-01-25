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
            "Ljava/util/List<",
            "Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Landroid/app/AlertDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentDir(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->currentDir:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgoBack(Lcom/s1243808733/util/ChooseDir$FileAdapter;)Z
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->goBack()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlertDialog;)V
    .registers 4

    .line 134
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->datalist:Ljava/util/List;

    .line 135
    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->context:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->dialog:Landroid/app/AlertDialog;

    .line 137
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance p2, Lcom/s1243808733/util/ChooseDir$FileAdapter$1;

    invoke-direct {p2, p0}, Lcom/s1243808733/util/ChooseDir$FileAdapter$1;-><init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private goBack()Z
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->currentDir:Ljava/io/File;

    if-eqz v0, :cond_f

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 158
    invoke-virtual {p0, v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->loadDir(Ljava/io/File;)V

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->datalist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->datalist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 124
    invoke-virtual {p0, p1}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->getItem(I)Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p2, :cond_19

    .line 229
    iget-object p2, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x1090003

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 230
    new-instance p3, Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;-><init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;Landroid/view/View;)V

    .line 231
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1f

    .line 233
    :cond_19
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;

    .line 236
    :goto_1f
    invoke-virtual {p0, p1}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->getItem(I)Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    move-result-object p1

    .line 237
    iget-boolean v0, p1, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->isBack:Z

    if-eqz v0, :cond_2f

    .line 238
    iget-object p1, p3, Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const-string p3, ".../"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 240
    :cond_2f
    iget-object p1, p1, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->file:Ljava/io/File;

    .line 241
    iget-object p3, p3, Lcom/s1243808733/util/ChooseDir$FileAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3a
    return-object p2
.end method

.method public loadDir(Ljava/io/File;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 172
    :cond_3
    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->currentDir:Ljava/io/File;

    .line 173
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    .line 180
    new-array v1, v2, [Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "/storage"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v3

    goto :goto_3e

    .line 184
    :cond_2d
    new-instance v1, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;-><init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v1, Lcom/s1243808733/util/ChooseDir$FileAdapter$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/util/ChooseDir$FileAdapter$2;-><init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    :goto_3e
    if-nez v1, :cond_5a

    .line 195
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/storage/emulated"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 196
    new-array v1, v2, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v4, "0"

    invoke-direct {v2, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v1, v3

    goto :goto_5a

    .line 198
    :cond_58
    new-array v1, v3, [Ljava/io/File;

    .line 202
    :cond_5a
    :goto_5a
    array-length p1, v1

    :goto_5b
    if-ge v3, p1, :cond_6a

    aget-object v2, v1, v3

    .line 203
    new-instance v4, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    invoke-direct {v4, p0, v2}, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;-><init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;Ljava/io/File;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 205
    :cond_6a
    new-instance p1, Lcom/s1243808733/util/ChooseDir$FileAdapter$3;

    invoke-direct {p1, p0}, Lcom/s1243808733/util/ChooseDir$FileAdapter$3;-><init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    iput-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->datalist:Ljava/util/List;

    .line 222
    invoke-virtual {p0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public reload()V
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter;->currentDir:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/s1243808733/util/ChooseDir$FileAdapter;->loadDir(Ljava/io/File;)V

    return-void
.end method
