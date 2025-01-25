.class public final Landroidj/support/v4/media/MediaMetadataCompat;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/MediaMetadataCompat$BitmapKey;,
        Landroidj/support/v4/media/MediaMetadataCompat$Builder;,
        Landroidj/support/v4/media/MediaMetadataCompat$LongKey;,
        Landroidj/support/v4/media/MediaMetadataCompat$RatingKey;,
        Landroidj/support/v4/media/MediaMetadataCompat$TextKey;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidj/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation
.end field

.field static final METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final METADATA_KEY_ADVERTISEMENT:Ljava/lang/String; = "android.media.metadata.ADVERTISEMENT"

.field public static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field public static final METADATA_KEY_ALBUM_ART:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field public static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field public static final METADATA_KEY_ALBUM_ART_URI:Ljava/lang/String; = "android.media.metadata.ALBUM_ART_URI"

.field public static final METADATA_KEY_ART:Ljava/lang/String; = "android.media.metadata.ART"

.field public static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field public static final METADATA_KEY_ART_URI:Ljava/lang/String; = "android.media.metadata.ART_URI"

.field public static final METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field public static final METADATA_KEY_BT_FOLDER_TYPE:Ljava/lang/String; = "android.media.metadata.BT_FOLDER_TYPE"

.field public static final METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field public static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field public static final METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field public static final METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field public static final METADATA_KEY_DISPLAY_DESCRIPTION:Ljava/lang/String; = "android.media.metadata.DISPLAY_DESCRIPTION"

.field public static final METADATA_KEY_DISPLAY_ICON:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON"

.field public static final METADATA_KEY_DISPLAY_ICON_URI:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON_URI"

.field public static final METADATA_KEY_DISPLAY_SUBTITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_SUBTITLE"

.field public static final METADATA_KEY_DISPLAY_TITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_TITLE"

.field public static final METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field public static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field public static final METADATA_KEY_MEDIA_ID:Ljava/lang/String; = "android.media.metadata.MEDIA_ID"

.field public static final METADATA_KEY_MEDIA_URI:Ljava/lang/String; = "android.media.metadata.MEDIA_URI"

.field public static final METADATA_KEY_NUM_TRACKS:Ljava/lang/String; = "android.media.metadata.NUM_TRACKS"

.field public static final METADATA_KEY_RATING:Ljava/lang/String; = "android.media.metadata.RATING"

.field public static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field public static final METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field public static final METADATA_KEY_USER_RATING:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field public static final METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field public static final METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"

.field static final METADATA_TYPE_BITMAP:I = 0x2

.field static final METADATA_TYPE_LONG:I = 0x0

.field static final METADATA_TYPE_RATING:I = 0x3

.field static final METADATA_TYPE_TEXT:I = 0x1

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_URI_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaMetadata"


# instance fields
.field final mBundle:Landroid/os/Bundle;

.field private mDescription:Landroidj/support/v4/media/MediaDescriptionCompat;

.field private mMetadataObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Landroidj/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroidj/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.TITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ARTIST"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DURATION"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.AUTHOR"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.WRITER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.COMPOSER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.COMPILATION"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DATE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.YEAR"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.GENRE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.TRACK_NUMBER"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.NUM_TRACKS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DISC_NUMBER"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ART"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ART_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.USER_RATING"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.RATING"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_ICON"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.MEDIA_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidj/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ADVERTISEMENT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.media.metadata.TITLE"

    aput-object v1, v0, v4

    const-string v1, "android.media.metadata.ARTIST"

    aput-object v1, v0, v3

    const-string v1, "android.media.metadata.ALBUM"

    aput-object v1, v0, v5

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "android.media.metadata.WRITER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.media.metadata.AUTHOR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.media.metadata.COMPOSER"

    aput-object v2, v0, v1

    sput-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.media.metadata.DISPLAY_ICON"

    aput-object v1, v0, v4

    const-string v1, "android.media.metadata.ART"

    aput-object v1, v0, v3

    const-string v1, "android.media.metadata.ALBUM_ART"

    aput-object v1, v0, v5

    sput-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    aput-object v1, v0, v4

    const-string v1, "android.media.metadata.ART_URI"

    aput-object v1, v0, v3

    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    aput-object v1, v0, v5

    sput-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    new-instance v0, Landroidj/support/v4/media/MediaMetadataCompat$1;

    invoke-direct {v0}, Landroidj/support/v4/media/MediaMetadataCompat$1;-><init>()V

    sput-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static fromMediaMetadata(Ljava/lang/Object;)Landroidj/support/v4/media/MediaMetadataCompat;
    .registers 4

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroidj/support/v4/media/MediaMetadataCompatApi21;->writeToParcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iput-object p0, v0, Landroidj/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    goto :goto_a
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "MediaMetadata"

    const-string v2, "Failed to retrieve a key as Bitmap."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDescription()Landroidj/support/v4/media/MediaDescriptionCompat;
    .registers 11

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mDescription:Landroidj/support/v4/media/MediaDescriptionCompat;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mDescription:Landroidj/support/v4/media/MediaDescriptionCompat;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/CharSequence;

    const-string v0, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b1

    aput-object v0, v5, v3

    const-string v0, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v5, v8

    const-string v0, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v5, v9

    :cond_32
    move v2, v3

    :goto_33
    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_db

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_d0

    :goto_42
    move v2, v3

    :goto_43
    sget-object v6, Landroidj/support/v4/media/MediaMetadataCompat;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_d9

    sget-object v6, Landroidj/support/v4/media/MediaMetadataCompat;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {p0, v6}, Landroidj/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d5

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_5a
    const-string v6, "android.media.metadata.MEDIA_URI"

    invoke-virtual {p0, v6}, Landroidj/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6a

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_6a
    new-instance v6, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v6}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    invoke-virtual {v6, v4}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    aget-object v3, v5, v3

    invoke-virtual {v6, v3}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    aget-object v3, v5, v8

    invoke-virtual {v6, v3}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    aget-object v3, v5, v9

    invoke-virtual {v6, v3}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-virtual {v6, v0}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-virtual {v6, v2}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-virtual {v6, v1}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    const-string v1, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.media.extra.BT_FOLDER_TYPE"

    const-string v2, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {p0, v2}, Landroidj/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    :cond_a7
    invoke-virtual {v6}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroidj/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mDescription:Landroidj/support/v4/media/MediaDescriptionCompat;

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mDescription:Landroidj/support/v4/media/MediaDescriptionCompat;

    goto/16 :goto_a

    :cond_b1
    move v0, v3

    move v2, v3

    :goto_b3
    array-length v6, v5

    if-ge v0, v6, :cond_32

    sget-object v6, Landroidj/support/v4/media/MediaMetadataCompat;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_32

    sget-object v6, Landroidj/support/v4/media/MediaMetadataCompat;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {p0, v6}, Landroidj/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_cd

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    :cond_cd
    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    :cond_d0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_33

    :cond_d5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_43

    :cond_d9
    move-object v2, v1

    goto :goto_5a

    :cond_db
    move-object v0, v1

    goto/16 :goto_42
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaMetadata()Ljava/lang/Object;
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    if-nez v0, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_e

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    :goto_d
    return-object v0

    :cond_e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroidj/support/v4/media/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {v0}, Landroidj/support/v4/media/MediaMetadataCompatApi21;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    goto :goto_d
.end method

.method public getRating(Ljava/lang/String;)Landroidj/support/v4/media/RatingCompat;
    .registers 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_11

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroidj/support/v4/media/RatingCompat;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/RatingCompat;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_10

    :catch_1a
    move-exception v0

    const-string v1, "MediaMetadata"

    const-string v2, "Failed to retrieve a key as Rating."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
