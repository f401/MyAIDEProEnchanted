.class public final Landroidj/support/v4/app/AppOpsManagerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManager23;,
        Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_IGNORED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    new-instance v0, Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManager23;

    invoke-direct {v0}, Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManager23;-><init>()V

    sput-object v0, Landroidj/support/v4/app/AppOpsManagerCompat;->IMPL:Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-direct {v0}, Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;-><init>()V

    sput-object v0, Landroidj/support/v4/app/AppOpsManagerCompat;->IMPL:Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p0  # Landroid/content/Context;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/app/AppOpsManagerCompat;->IMPL:Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;->noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0  # Landroid/content/Context;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/app/AppOpsManagerCompat;->IMPL:Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidj/support/v4/app/AppOpsManagerCompat;->IMPL:Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0}, Landroidj/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
