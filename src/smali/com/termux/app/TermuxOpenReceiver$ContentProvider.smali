.class public Lcom/termux/app/TermuxOpenReceiver$ContentProvider;
.super Landroid/content/ContentProvider;
.source "TermuxOpenReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/TermuxOpenReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v5, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    if-nez p2, :cond_0

    .line 119
    const/4 v0, 0x3

    new-array p2, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    aput-object v0, p2, v2

    const-string v0, "_size"

    aput-object v0, p2, v4

    const-string v0, "_id"

    aput-object v0, p2, v3

    .line 126
    :cond_0
    array-length v0, p2

    new-array v6, v0, [Ljava/lang/Object;

    move v1, v2

    .line 127
    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_2

    .line 128
    aget-object v0, p2, v1

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    .line 143
    :goto_2
    aput-object v0, v6, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 130
    :sswitch_0
    const-string v7, "_size"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v7, "_id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v7, "_display_name"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    .line 135
    :pswitch_0
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 138
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 132
    :pswitch_2
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 146
    :cond_2
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    .line 130
    :sswitch_data_0
    .sparse-switch
        -0x1d1c5239 -> :sswitch_2
        0x171ba -> :sswitch_1
        0x57098e0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
