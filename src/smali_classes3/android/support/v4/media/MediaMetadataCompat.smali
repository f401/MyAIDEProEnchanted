.class public final Landroid/support/v4/media/MediaMetadataCompat;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final DW:[Ljava/lang/String;

.field private static final FH:[Ljava/lang/String;

.field private static final Hw:[Ljava/lang/String;

.field static final j6:Labcd/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Zo:Ljava/lang/Object;

.field final v5:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->j6:Labcd/k;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v0, v3, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v4, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "android.media.metadata.DURATION"

    invoke-virtual {v0, v7, v6}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "android.media.metadata.ALBUM"

    invoke-virtual {v0, v7, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "android.media.metadata.AUTHOR"

    invoke-virtual {v0, v8, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "android.media.metadata.WRITER"

    invoke-virtual {v0, v9, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "android.media.metadata.COMPOSER"

    invoke-virtual {v0, v10, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "android.media.metadata.COMPILATION"

    invoke-virtual {v0, v11, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "android.media.metadata.DATE"

    invoke-virtual {v0, v11, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "android.media.metadata.YEAR"

    invoke-virtual {v0, v11, v6}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "android.media.metadata.GENRE"

    invoke-virtual {v0, v11, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {v0, v11, v6}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {v0, v11, v6}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {v0, v11, v6}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v0, v11, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "android.media.metadata.ART"

    invoke-virtual {v0, v14, v13}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "android.media.metadata.ART_URI"

    invoke-virtual {v0, v15, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v12, v13}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v0, v1, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    move-object/from16 v16, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "android.media.metadata.USER_RATING"

    invoke-virtual {v0, v5, v1}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "android.media.metadata.RATING"

    invoke-virtual {v0, v5, v1}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v0, v1, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {v0, v1, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {v0, v1, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v0, v1, v13}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v0, v5, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v13, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v0, v13, v6}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "android.media.metadata.MEDIA_URI"

    invoke-virtual {v0, v13, v2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "android.media.metadata.ADVERTISEMENT"

    invoke-virtual {v0, v2, v6}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "android.media.metadata.DOWNLOAD_STATUS"

    invoke-virtual {v0, v2, v6}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v4, v0, v2

    const/4 v2, 0x2

    aput-object v7, v0, v2

    const/4 v2, 0x3

    aput-object v11, v0, v2

    const/4 v3, 0x4

    aput-object v9, v0, v3

    const/4 v3, 0x5

    aput-object v8, v0, v3

    const/4 v3, 0x6

    aput-object v10, v0, v3

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->DW:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v14, v0, v1

    const/4 v4, 0x2

    aput-object v12, v0, v4

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->FH:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    aput-object v5, v0, v3

    aput-object v15, v0, v1

    aput-object v16, v0, v4

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->Hw:[Ljava/lang/String;

    new-instance v0, Landroid/support/v4/media/E;

    invoke-direct {v0}, Landroid/support/v4/media/E;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/MediaMetadataCompat;->v5:Landroid/os/Bundle;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;
    .registers 3

    if-eqz p0, :cond_21

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_21

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/support/v4/media/F;->j6(Ljava/lang/Object;Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    iput-object p0, v1, Landroid/support/v4/media/MediaMetadataCompat;->Zo:Ljava/lang/Object;

    return-object v1

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Landroid/support/v4/media/MediaMetadataCompat;->v5:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
