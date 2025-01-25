.class public Lcom/crashlytics/android/core/Ia$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/Ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final DW:I

.field final FH:Lcom/crashlytics/android/core/Ia;

.field public final j6:[B


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/Ia;[BI)V
    .registers 4

    iput-object p1, p0, Lcom/crashlytics/android/core/Ia$a;->FH:Lcom/crashlytics/android/core/Ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/crashlytics/android/core/Ia$a;->j6:[B

    iput p3, p0, Lcom/crashlytics/android/core/Ia$a;->DW:I

    return-void
.end method
