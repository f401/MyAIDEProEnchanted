.class final Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/ads/mediation/d;

.field private final FH:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

.field private final j6:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/d;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->FH:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->j6:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    iput-object p3, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->DW:Lcom/google/android/gms/ads/mediation/d;

    return-void
.end method
