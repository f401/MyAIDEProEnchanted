.class public final Lcom/google/android/gms/internal/measurement/S$a;
.super Lcom/google/android/gms/internal/measurement/Fb$a;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/nc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/Fb$a<",
        "Lcom/google/android/gms/internal/measurement/S;",
        "Lcom/google/android/gms/internal/measurement/S$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/nc;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/S;->we()Lcom/google/android/gms/internal/measurement/S;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/Fb$a;-><init>(Lcom/google/android/gms/internal/measurement/Fb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/T;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/S$a;-><init>()V

    return-void
.end method
