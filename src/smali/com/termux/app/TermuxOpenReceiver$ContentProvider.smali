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
    .registers 1

    .line 107
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 173
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    const/high16 p1, 0x10000000

    invoke-static {p2, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    .line 116
    new-instance p3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    const-string p1, "_id"

    const/4 p4, 0x2

    const-string p5, "_size"

    const-string v0, "_display_name"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1d

    .line 119
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    aput-object v0, p2, v1

    aput-object p5, p2, v2

    aput-object p1, p2, p4

    .line 126
    :cond_1d
    array-length v3, p2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 127
    :goto_21
    array-length v5, p2

    if-ge v4, v5, :cond_6a

    .line 128
    aget-object v5, p2, v4

    .line 130
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_74

    :goto_30
    goto :goto_4c

    :sswitch_31
    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    goto :goto_30

    :cond_38
    const/4 v5, 0x2

    goto :goto_4d

    :sswitch_3a
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    goto :goto_30

    :cond_41
    const/4 v5, 0x1

    goto :goto_4d

    :sswitch_43
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    goto :goto_30

    :cond_4a
    const/4 v5, 0x0

    goto :goto_4d

    :goto_4c
    const/4 v5, -0x1

    :goto_4d
    packed-switch v5, :pswitch_data_82

    const/4 v5, 0x0

    goto :goto_65

    .line 135
    :pswitch_52  #0x2
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_65

    .line 138
    :pswitch_5c  #0x1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_65

    .line 132
    :pswitch_61  #0x0
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 143
    :goto_65
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 146
    :cond_6a
    new-instance p1, Landroid/database/MatrixCursor;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1

    nop

    :sswitch_data_74
    .sparse-switch
        -0x1d1c5239 -> :sswitch_43
        0x171ba -> :sswitch_3a
        0x57098e0 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_61  #00000000
        :pswitch_5c  #00000001
        :pswitch_52  #00000002
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method
