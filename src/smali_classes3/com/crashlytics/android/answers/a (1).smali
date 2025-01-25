.class public Lcom/crashlytics/android/answers/a;
.super Lcom/crashlytics/android/answers/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/crashlytics/android/answers/y<",
        "Lcom/crashlytics/android/answers/a;",
        ">;"
    }
.end annotation


# static fields
.field static final j6:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/answers/a;->j6:Ljava/math/BigDecimal;

    return-void
.end method
