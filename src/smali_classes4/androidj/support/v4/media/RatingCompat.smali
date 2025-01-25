.class public final Landroidj/support/v4/media/RatingCompat;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/RatingCompat$StarStyle;,
        Landroidj/support/v4/media/RatingCompat$Style;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidj/support/v4/media/RatingCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_3_STARS:I = 0x3

.field public static final RATING_4_STARS:I = 0x4

.field public static final RATING_5_STARS:I = 0x5

.field public static final RATING_HEART:I = 0x1

.field public static final RATING_NONE:I = 0x0

.field private static final RATING_NOT_RATED:F = -1.0f

.field public static final RATING_PERCENTAGE:I = 0x6

.field public static final RATING_THUMB_UP_DOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private mRatingObj:Ljava/lang/Object;

.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidj/support/v4/media/RatingCompat$1;

    invoke-direct {v0}, Landroidj/support/v4/media/RatingCompat$1;-><init>()V

    sput-object v0, Landroidj/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidj/support/v4/media/RatingCompat;->mRatingStyle:I

    iput p2, p0, Landroidj/support/v4/media/RatingCompat;->mRatingValue:F

    return-void
.end method

.method public static fromRating(Ljava/lang/Object;)Landroidj/support/v4/media/RatingCompat;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Landroidj/support/v4/media/RatingCompatKitkat;->getRatingStyle(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p0}, Landroidj/support/v4/media/RatingCompatKitkat;->isRated(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    packed-switch v1, :pswitch_data_44

    goto :goto_9

    :pswitch_18  #0x1
    invoke-static {p0}, Landroidj/support/v4/media/RatingCompatKitkat;->hasHeart(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidj/support/v4/media/RatingCompat;->newHeartRating(Z)Landroidj/support/v4/media/RatingCompat;

    move-result-object v0

    :goto_20
    iput-object p0, v0, Landroidj/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_9

    :pswitch_23  #0x2
    invoke-static {p0}, Landroidj/support/v4/media/RatingCompatKitkat;->isThumbUp(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidj/support/v4/media/RatingCompat;->newThumbRating(Z)Landroidj/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_20

    :pswitch_2c  #0x3, 0x4, 0x5
    invoke-static {p0}, Landroidj/support/v4/media/RatingCompatKitkat;->getStarRating(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v1, v0}, Landroidj/support/v4/media/RatingCompat;->newStarRating(IF)Landroidj/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_20

    :pswitch_35  #0x6
    invoke-static {p0}, Landroidj/support/v4/media/RatingCompatKitkat;->getPercentRating(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v0}, Landroidj/support/v4/media/RatingCompat;->newPercentageRating(F)Landroidj/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_20

    :cond_3e
    invoke-static {v1}, Landroidj/support/v4/media/RatingCompat;->newUnratedRating(I)Landroidj/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_20

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_18  #00000001
        :pswitch_23  #00000002
        :pswitch_2c  #00000003
        :pswitch_2c  #00000004
        :pswitch_2c  #00000005
        :pswitch_35  #00000006
    .end packed-switch
.end method

.method public static newHeartRating(Z)Landroidj/support/v4/media/RatingCompat;
    .registers 4

    if-eqz p0, :cond_b

    const/high16 v0, 0x3f800000  # 1.0f

    :goto_4
    new-instance v1, Landroidj/support/v4/media/RatingCompat;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroidj/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v1

    :cond_b
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static newPercentageRating(F)Landroidj/support/v4/media/RatingCompat;
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_b

    const/high16 v0, 0x42c80000  # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_14

    :cond_b
    const-string v0, "Rating"

    const-string v1, "Invalid percentage-based rating value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Landroidj/support/v4/media/RatingCompat;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroidj/support/v4/media/RatingCompat;-><init>(IF)V

    goto :goto_13
.end method

.method public static newStarRating(IF)Landroidj/support/v4/media/RatingCompat;
    .registers 6

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_42

    const-string v1, "Rating"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid rating style ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for a star rating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-object v0

    :pswitch_23  #0x3
    const/high16 v1, 0x40400000  # 3.0f

    :goto_25
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_2e

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3c

    :cond_2e
    const-string v1, "Rating"

    const-string v2, "Trying to set out of range star-based rating"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :pswitch_36  #0x4
    const/high16 v1, 0x40800000  # 4.0f

    goto :goto_25

    :pswitch_39  #0x5
    const/high16 v1, 0x40a00000  # 5.0f

    goto :goto_25

    :cond_3c
    new-instance v0, Landroidj/support/v4/media/RatingCompat;

    invoke-direct {v0, p0, p1}, Landroidj/support/v4/media/RatingCompat;-><init>(IF)V

    goto :goto_22

    :pswitch_data_42
    .packed-switch 0x3
        :pswitch_23  #00000003
        :pswitch_36  #00000004
        :pswitch_39  #00000005
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroidj/support/v4/media/RatingCompat;
    .registers 4

    if-eqz p0, :cond_b

    const/high16 v0, 0x3f800000  # 1.0f

    :goto_4
    new-instance v1, Landroidj/support/v4/media/RatingCompat;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Landroidj/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v1

    :cond_b
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static newUnratedRating(I)Landroidj/support/v4/media/RatingCompat;
    .registers 3

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    new-instance v0, Landroidj/support/v4/media/RatingCompat;

    const/high16 v1, -0x40800000  # -1.0f

    invoke-direct {v0, p0, v1}, Landroidj/support/v4/media/RatingCompat;-><init>(IF)V

    goto :goto_4

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingStyle:I

    return v0
.end method

.method public getPercentRating()F
    .registers 3

    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Landroidj/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_b
    const/high16 v0, -0x40800000  # -1.0f

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingValue:F

    goto :goto_d
.end method

.method public getRating()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    if-nez v0, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_d

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroidj/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingStyle:I

    packed-switch v0, :pswitch_data_54

    :goto_18
    const/4 v0, 0x0

    goto :goto_c

    :pswitch_1a  #0x1
    invoke-virtual {p0}, Landroidj/support/v4/media/RatingCompat;->hasHeart()Z

    move-result v0

    invoke-static {v0}, Landroidj/support/v4/media/RatingCompatKitkat;->newHeartRating(Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    :goto_24
    iget-object v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_c

    :pswitch_27  #0x2
    invoke-virtual {p0}, Landroidj/support/v4/media/RatingCompat;->isThumbUp()Z

    move-result v0

    invoke-static {v0}, Landroidj/support/v4/media/RatingCompatKitkat;->newThumbRating(Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_24

    :pswitch_32  #0x3, 0x4, 0x5
    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {p0}, Landroidj/support/v4/media/RatingCompat;->getStarRating()F

    move-result v1

    invoke-static {v0, v1}, Landroidj/support/v4/media/RatingCompatKitkat;->newStarRating(IF)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_24

    :pswitch_3f  #0x6
    invoke-virtual {p0}, Landroidj/support/v4/media/RatingCompat;->getPercentRating()F

    move-result v0

    invoke-static {v0}, Landroidj/support/v4/media/RatingCompatKitkat;->newPercentageRating(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_18

    :cond_4a
    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-static {v0}, Landroidj/support/v4/media/RatingCompatKitkat;->newUnratedRating(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_24

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1a  #00000001
        :pswitch_27  #00000002
        :pswitch_32  #00000003
        :pswitch_32  #00000004
        :pswitch_32  #00000005
        :pswitch_3f  #00000006
    .end packed-switch
.end method

.method public getRatingStyle()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingStyle:I

    return v0
.end method

.method public getStarRating()F
    .registers 2

    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingStyle:I

    packed-switch v0, :pswitch_data_12

    :cond_5
    const/high16 v0, -0x40800000  # -1.0f

    :goto_7
    return v0

    :pswitch_8  #0x3, 0x4, 0x5
    invoke-virtual {p0}, Landroidj/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingValue:F

    goto :goto_7

    nop

    :pswitch_data_12
    .packed-switch 0x3
        :pswitch_8  #00000003
        :pswitch_8  #00000004
        :pswitch_8  #00000005
    .end packed-switch
.end method

.method public hasHeart()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroidj/support/v4/media/RatingCompat;->mRatingStyle:I

    if-eq v2, v0, :cond_8

    :cond_6
    move v0, v1

    :goto_7
    return v0

    :cond_8
    iget v2, p0, Landroidj/support/v4/media/RatingCompat;->mRatingValue:F

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    goto :goto_7
.end method

.method public isRated()Z
    .registers 3

    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isThumbUp()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroidj/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget v1, p0, Landroidj/support/v4/media/RatingCompat;->mRatingValue:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    const/4 v0, 0x1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rating:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidj/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingValue:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_29

    const-string v0, "unrated"

    :goto_20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroidj/support/v4/media/RatingCompat;->mRatingValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
