.class public final Landroidj/support/v4/view/PointerIconCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/PointerIconCompat$Api24PointerIconCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroidj/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

.field public static final TYPE_ALIAS:I = 0x3f2

.field public static final TYPE_ALL_SCROLL:I = 0x3f5

.field public static final TYPE_ARROW:I = 0x3e8

.field public static final TYPE_CELL:I = 0x3ee

.field public static final TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final TYPE_COPY:I = 0x3f3

.field public static final TYPE_CROSSHAIR:I = 0x3ef

.field public static final TYPE_DEFAULT:I = 0x3e8

.field public static final TYPE_GRAB:I = 0x3fc

.field public static final TYPE_GRABBING:I = 0x3fd

.field public static final TYPE_HAND:I = 0x3ea

.field public static final TYPE_HELP:I = 0x3eb

.field public static final TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final TYPE_NO_DROP:I = 0x3f4

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_TEXT:I = 0x3f0

.field public static final TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final TYPE_WAIT:I = 0x3ec

.field public static final TYPE_ZOOM_IN:I = 0x3fa

.field public static final TYPE_ZOOM_OUT:I = 0x3fb


# instance fields
.field private mPointerIcon:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroidj/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Landroidj/support/v4/view/PointerIconCompat$Api24PointerIconCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/PointerIconCompat$Api24PointerIconCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/PointerIconCompat;->IMPL:Landroidj/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroidj/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;

    invoke-direct {v0}, Landroidj/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/view/PointerIconCompat;->IMPL:Landroidj/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Landroidj/support/v4/view/PointerIconCompat;
    .registers 5

    new-instance v0, Landroidj/support/v4/view/PointerIconCompat;

    sget-object v1, Landroidj/support/v4/view/PointerIconCompat;->IMPL:Landroidj/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    invoke-interface {v1, p0, p1, p2}, Landroidj/support/v4/view/PointerIconCompat$PointerIconCompatImpl;->create(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroidj/support/v4/view/PointerIconCompat;
    .registers 4

    new-instance v0, Landroidj/support/v4/view/PointerIconCompat;

    sget-object v1, Landroidj/support/v4/view/PointerIconCompat;->IMPL:Landroidj/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    invoke-interface {v1, p0, p1}, Landroidj/support/v4/view/PointerIconCompat$PointerIconCompatImpl;->getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static load(Landroid/content/res/Resources;I)Landroidj/support/v4/view/PointerIconCompat;
    .registers 4

    new-instance v0, Landroidj/support/v4/view/PointerIconCompat;

    sget-object v1, Landroidj/support/v4/view/PointerIconCompat;->IMPL:Landroidj/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    invoke-interface {v1, p0, p1}, Landroidj/support/v4/view/PointerIconCompat$PointerIconCompatImpl;->load(Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getPointerIcon()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    return-object v0
.end method
