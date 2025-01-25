.class public final Landroidj/support/v4/media/MediaDescriptionCompat;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/MediaDescriptionCompat$Builder;
    }
.end annotation


# static fields
.field public static final BT_FOLDER_TYPE_ALBUMS:J = 0x2L

.field public static final BT_FOLDER_TYPE_ARTISTS:J = 0x3L

.field public static final BT_FOLDER_TYPE_GENRES:J = 0x4L

.field public static final BT_FOLDER_TYPE_MIXED:J = 0x0L

.field public static final BT_FOLDER_TYPE_PLAYLISTS:J = 0x5L

.field public static final BT_FOLDER_TYPE_TITLES:J = 0x1L

.field public static final BT_FOLDER_TYPE_YEARS:J = 0x6L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidj/support/v4/media/MediaDescriptionCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final DESCRIPTION_KEY_MEDIA_URI:Ljava/lang/String; = "androidj.support.v4.media.description.MEDIA_URI"
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final DESCRIPTION_KEY_NULL_BUNDLE_FLAG:Ljava/lang/String; = "androidj.support.v4.media.description.NULL_BUNDLE_FLAG"
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final EXTRA_BT_FOLDER_TYPE:Ljava/lang/String; = "android.media.extra.BT_FOLDER_TYPE"


# instance fields
.field private final mDescription:Ljava/lang/CharSequence;

.field private mDescriptionObj:Ljava/lang/Object;

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:Landroid/graphics/Bitmap;

.field private final mIconUri:Landroid/net/Uri;

.field private final mMediaId:Ljava/lang/String;

.field private final mMediaUri:Landroid/net/Uri;

.field private final mSubtitle:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidj/support/v4/media/MediaDescriptionCompat$1;

    invoke-direct {v0}, Landroidj/support/v4/media/MediaDescriptionCompat$1;-><init>()V

    sput-object v0, Landroidj/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    iput-object p2, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    iput-object p5, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    iput-object p6, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    iput-object p7, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    iput-object p8, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    return-void
.end method

.method public static fromMediaDescription(Ljava/lang/Object;)Landroidj/support/v4/media/MediaDescriptionCompat;
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_a

    :cond_9
    :goto_9
    return-object v1

    :cond_a
    new-instance v4, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v4}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    invoke-static {p0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21;->getMediaId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-static {p0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21;->getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-static {p0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21;->getSubtitle(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-static {p0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21;->getDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-static {p0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21;->getIconBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-static {p0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21;->getIconUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-static {p0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_61

    move-object v3, v1

    :goto_40
    if-eqz v3, :cond_75

    const-string v0, "androidj.support.v4.media.description.NULL_BUNDLE_FLAG"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_6b

    move-object v0, v1

    :goto_52
    invoke-virtual {v4, v0}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    if-eqz v3, :cond_77

    invoke-virtual {v4, v3}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    :cond_5a
    :goto_5a
    invoke-virtual {v4}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroidj/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    iput-object p0, v1, Landroidj/support/v4/media/MediaDescriptionCompat;->mDescriptionObj:Ljava/lang/Object;

    goto :goto_9

    :cond_61
    const-string v0, "androidj.support.v4.media.description.MEDIA_URI"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v3, v0

    goto :goto_40

    :cond_6b
    const-string v0, "androidj.support.v4.media.description.MEDIA_URI"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "androidj.support.v4.media.description.NULL_BUNDLE_FLAG"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_75
    move-object v0, v2

    goto :goto_52

    :cond_77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5a

    invoke-static {p0}, Landroidj/support/v4/media/MediaDescriptionCompatApi23;->getMediaUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;

    goto :goto_5a
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMediaDescription()Ljava/lang/Object;
    .registers 6

    const/16 v4, 0x17

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mDescriptionObj:Ljava/lang/Object;

    if-nez v0, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_f

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mDescriptionObj:Ljava/lang/Object;

    :goto_e
    return-object v0

    :cond_f
    invoke-static {}, Landroidj/support/v4/media/MediaDescriptionCompatApi21$Builder;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21$Builder;->setMediaId(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21$Builder;->setTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21$Builder;->setSubtitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21$Builder;->setDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21$Builder;->setIconBitmap(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21$Builder;->setIconUri(Ljava/lang/Object;Landroid/net/Uri;)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_4f

    iget-object v2, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    if-eqz v2, :cond_4f

    if-nez v0, :cond_48

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "androidj.support.v4.media.description.NULL_BUNDLE_FLAG"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_48
    const-string v2, "androidj.support.v4.media.description.MEDIA_URI"

    iget-object v3, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4f
    invoke-static {v1, v0}, Landroidj/support/v4/media/MediaDescriptionCompatApi21$Builder;->setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_5b

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroidj/support/v4/media/MediaDescriptionCompatApi23$Builder;->setMediaUri(Ljava/lang/Object;Landroid/net/Uri;)V

    :cond_5b
    invoke-static {v1}, Landroidj/support/v4/media/MediaDescriptionCompatApi21$Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mDescriptionObj:Ljava/lang/Object;

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mDescriptionObj:Ljava/lang/Object;

    goto :goto_e
.end method

.method public getMediaId()Ljava/lang/String;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2f

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :goto_2e
    return-void

    :cond_2f
    invoke-virtual {p0}, Landroidj/support/v4/media/MediaDescriptionCompat;->getMediaDescription()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroidj/support/v4/media/MediaDescriptionCompatApi21;->writeToParcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    goto :goto_2e
.end method
