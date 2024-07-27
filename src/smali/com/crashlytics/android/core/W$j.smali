.class final Lcom/crashlytics/android/core/W$j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/La$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "j"
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/core/W;


# direct methods
.method private constructor <init>(Lcom/crashlytics/android/core/W;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/core/W$j;->j6:Lcom/crashlytics/android/core/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/core/W;Lcom/crashlytics/android/core/D;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W$j;-><init>(Lcom/crashlytics/android/core/W;)V

    return-void
.end method


# virtual methods
.method public j6()Z
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/W$j;->j6:Lcom/crashlytics/android/core/W;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/W;->VH()Z

    move-result v0

    return v0
.end method
