.class public abstract Lcom/google/android/gms/internal/measurement/Qa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/wc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/measurement/lc;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/wc<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final j6:Lcom/google/android/gms/internal/measurement/sb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/sb;->DW()Lcom/google/android/gms/internal/measurement/sb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/Qa;->j6:Lcom/google/android/gms/internal/measurement/sb;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
