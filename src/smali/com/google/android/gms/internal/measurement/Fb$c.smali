.class public abstract Lcom/google/android/gms/internal/measurement/Fb$c;
.super Lcom/google/android/gms/internal/measurement/Fb;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/nc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/Fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/Fb$c",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/Fb",
        "<TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/measurement/nc;"
    }
.end annotation


# instance fields
.field protected zzbyj:Lcom/google/android/gms/internal/measurement/wb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/wb",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Fb;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/wb;->VH()Lcom/google/android/gms/internal/measurement/wb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Fb$c;->zzbyj:Lcom/google/android/gms/internal/measurement/wb;

    return-void
.end method
