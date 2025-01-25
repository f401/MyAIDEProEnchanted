.class public final Landroid/support/v4/media/MediaDescriptionCompat;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaDescriptionCompat$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/MediaDescriptionCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Ljava/lang/CharSequence;

.field private final FH:Ljava/lang/CharSequence;

.field private final Hw:Ljava/lang/CharSequence;

.field private final VH:Landroid/os/Bundle;

.field private final Zo:Landroid/net/Uri;

.field private final gn:Landroid/net/Uri;

.field private final j6:Ljava/lang/String;

.field private u7:Ljava/lang/Object;

.field private final v5:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/media/B;

    invoke-direct {v0}, Landroid/support/v4/media/B;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->j6:Ljava/lang/String;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->DW:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->FH:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->Hw:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->v5:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->Zo:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->VH:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->gn:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->j6:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->DW:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/support/v4/media/MediaDescriptionCompat;->FH:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v4/media/MediaDescriptionCompat;->Hw:Ljava/lang/CharSequence;

    iput-object p5, p0, Landroid/support/v4/media/MediaDescriptionCompat;->v5:Landroid/graphics/Bitmap;

    iput-object p6, p0, Landroid/support/v4/media/MediaDescriptionCompat;->Zo:Landroid/net/Uri;

    iput-object p7, p0, Landroid/support/v4/media/MediaDescriptionCompat;->VH:Landroid/os/Bundle;

    iput-object p8, p0, Landroid/support/v4/media/MediaDescriptionCompat;->gn:Landroid/net/Uri;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_7d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_7d

    new-instance v1, Landroid/support/v4/media/MediaDescriptionCompat$a;

    invoke-direct {v1}, Landroid/support/v4/media/MediaDescriptionCompat$a;-><init>()V

    invoke-static {p0}, Landroid/support/v4/media/C;->v5(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$a;->j6(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$a;

    invoke-static {p0}, Landroid/support/v4/media/C;->VH(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$a;->FH(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$a;

    invoke-static {p0}, Landroid/support/v4/media/C;->Zo(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$a;->DW(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$a;

    invoke-static {p0}, Landroid/support/v4/media/C;->j6(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$a;->j6(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$a;

    invoke-static {p0}, Landroid/support/v4/media/C;->FH(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$a;->j6(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat$a;

    invoke-static {p0}, Landroid/support/v4/media/C;->Hw(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$a;->j6(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$a;

    invoke-static {p0}, Landroid/support/v4/media/C;->DW(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.support.v4.media.description.MEDIA_URI"

    if-nez v2, :cond_42

    move-object v4, v0

    goto :goto_48

    :cond_42
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    :goto_48
    if-eqz v4, :cond_60

    const-string v5, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5a

    goto :goto_61

    :cond_5a
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_60
    move-object v0, v2

    :goto_61
    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaDescriptionCompat$a;->j6(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$a;

    if-eqz v4, :cond_6a

    invoke-virtual {v1, v4}, Landroid/support/v4/media/MediaDescriptionCompat$a;->DW(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$a;

    goto :goto_77

    :cond_6a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_77

    invoke-static {p0}, Landroid/support/v4/media/D;->gn(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaDescriptionCompat$a;->DW(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$a;

    :cond_77
    :goto_77
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat$a;->j6()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    iput-object p0, v0, Landroid/support/v4/media/MediaDescriptionCompat;->u7:Ljava/lang/Object;

    :cond_7d
    return-object v0
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->u7:Ljava/lang/Object;

    if-nez v0, :cond_60

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_b

    goto :goto_60

    :cond_b
    invoke-static {}, Landroid/support/v4/media/C$a;->j6()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->j6:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v4/media/C$a;->j6(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->DW:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/support/v4/media/C$a;->FH(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->FH:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/support/v4/media/C$a;->DW(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->Hw:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/support/v4/media/C$a;->j6(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->v5:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroid/support/v4/media/C$a;->j6(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->Zo:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/media/C$a;->j6(Ljava/lang/Object;Landroid/net/Uri;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->VH:Landroid/os/Bundle;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_4d

    iget-object v2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->gn:Landroid/net/Uri;

    if-eqz v2, :cond_4d

    if-nez v1, :cond_46

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_46
    const-string v2, "android.support.v4.media.description.MEDIA_URI"

    iget-object v4, p0, Landroid/support/v4/media/MediaDescriptionCompat;->gn:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4d
    invoke-static {v0, v1}, Landroid/support/v4/media/C$a;->j6(Ljava/lang/Object;Landroid/os/Bundle;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_59

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->gn:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/media/D$a;->DW(Ljava/lang/Object;Landroid/net/Uri;)V

    :cond_59
    invoke-static {v0}, Landroid/support/v4/media/C$a;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->u7:Ljava/lang/Object;

    return-object v0

    :cond_60
    :goto_60
    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->u7:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->DW:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaDescriptionCompat;->FH:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaDescriptionCompat;->Hw:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2f

    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->DW:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->FH:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->Hw:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->v5:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->Zo:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->VH:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/media/MediaDescriptionCompat;->gn:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_36

    :cond_2f
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->j6()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/C;->j6(Ljava/lang/Object;Landroid/os/Parcel;I)V

    :goto_36
    return-void
.end method
