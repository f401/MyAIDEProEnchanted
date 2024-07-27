.class Lcom/crashlytics/android/core/J;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/W$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->v5(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:I

.field final FH:J

.field final Hw:J

.field final VH:I

.field final Zo:Ljava/util/Map;

.field final gn:Lcom/crashlytics/android/core/W;

.field final j6:I

.field final v5:Z


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;IIJJZLjava/util/Map;I)V
    .registers 11

    iput-object p1, p0, Lcom/crashlytics/android/core/J;->gn:Lcom/crashlytics/android/core/W;

    iput p2, p0, Lcom/crashlytics/android/core/J;->j6:I

    iput p3, p0, Lcom/crashlytics/android/core/J;->DW:I

    iput-wide p4, p0, Lcom/crashlytics/android/core/J;->FH:J

    iput-wide p6, p0, Lcom/crashlytics/android/core/J;->Hw:J

    iput-boolean p8, p0, Lcom/crashlytics/android/core/J;->v5:Z

    iput-object p9, p0, Lcom/crashlytics/android/core/J;->Zo:Ljava/util/Map;

    iput p10, p0, Lcom/crashlytics/android/core/J;->VH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/crashlytics/android/core/h;)V
    .registers 15

    iget v1, p0, Lcom/crashlytics/android/core/J;->j6:I

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget v3, p0, Lcom/crashlytics/android/core/J;->DW:I

    iget-wide v4, p0, Lcom/crashlytics/android/core/J;->FH:J

    iget-wide v6, p0, Lcom/crashlytics/android/core/J;->Hw:J

    iget-boolean v8, p0, Lcom/crashlytics/android/core/J;->v5:Z

    iget-object v9, p0, Lcom/crashlytics/android/core/J;->Zo:Ljava/util/Map;

    iget v10, p0, Lcom/crashlytics/android/core/J;->VH:I

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v12, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v12}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
