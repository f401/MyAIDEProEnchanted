.class Lcom/crashlytics/android/core/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/W$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:J

.field final Hw:Lcom/crashlytics/android/core/W;

.field final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    iput-object p1, p0, Lcom/crashlytics/android/core/z;->Hw:Lcom/crashlytics/android/core/W;

    iput-object p2, p0, Lcom/crashlytics/android/core/z;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/core/z;->DW:Ljava/lang/String;

    iput-wide p4, p0, Lcom/crashlytics/android/core/z;->FH:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/crashlytics/android/core/h;)V
    .registers 6

    iget-object v0, p0, Lcom/crashlytics/android/core/z;->j6:Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/core/z;->DW:Ljava/lang/String;

    iget-wide v2, p0, Lcom/crashlytics/android/core/z;->FH:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
