.class public Lcom/crashlytics/android/core/Ta;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Lcom/crashlytics/android/core/Ta;


# instance fields
.field public final DW:Ljava/lang/String;

.field public final FH:Ljava/lang/String;

.field public final Hw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/crashlytics/android/core/Ta;

    invoke-direct {v0}, Lcom/crashlytics/android/core/Ta;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/Ta;->j6:Lcom/crashlytics/android/core/Ta;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/crashlytics/android/core/Ta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/Ta;->DW:Ljava/lang/String;

    iput-object p2, p0, Lcom/crashlytics/android/core/Ta;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/core/Ta;->Hw:Ljava/lang/String;

    return-void
.end method
