.class public final Lcom/google/android/gms/internal/ads/ce;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final DW:Lcom/google/android/gms/internal/ads/sl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/sl<",
            "Lcom/google/android/gms/internal/ads/gd;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:Lcom/google/android/gms/internal/ads/sl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/sl<",
            "Lcom/google/android/gms/internal/ads/gd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final FH:Lcom/google/android/gms/internal/ads/rd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/de;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/de;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ce;->j6:Lcom/google/android/gms/internal/ads/sl;

    new-instance v0, Lcom/google/android/gms/internal/ads/ee;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ee;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ce;->DW:Lcom/google/android/gms/internal/ads/sl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/rd;

    sget-object v4, Lcom/google/android/gms/internal/ads/ce;->j6:Lcom/google/android/gms/internal/ads/sl;

    sget-object v5, Lcom/google/android/gms/internal/ads/ce;->DW:Lcom/google/android/gms/internal/ads/sl;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/rd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Lcom/google/android/gms/internal/ads/sl;Lcom/google/android/gms/internal/ads/sl;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/ce;->FH:Lcom/google/android/gms/internal/ads/rd;

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Xd;Lcom/google/android/gms/internal/ads/Wd;)Lcom/google/android/gms/internal/ads/Ud;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/Xd<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/Wd<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/Ud<",
            "TI;TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/fe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ce;->FH:Lcom/google/android/gms/internal/ads/rd;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/fe;-><init>(Lcom/google/android/gms/internal/ads/rd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Xd;Lcom/google/android/gms/internal/ads/Wd;)V

    return-object v0
.end method
