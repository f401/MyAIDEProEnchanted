.class Lcom/crashlytics/android/core/C;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/W$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->Hw(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final Zo:Lcom/crashlytics/android/core/W;

.field final j6:Ljava/lang/String;

.field final v5:I


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    iput-object p1, p0, Lcom/crashlytics/android/core/C;->Zo:Lcom/crashlytics/android/core/W;

    iput-object p2, p0, Lcom/crashlytics/android/core/C;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/core/C;->DW:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/core/C;->FH:Ljava/lang/String;

    iput-object p5, p0, Lcom/crashlytics/android/core/C;->Hw:Ljava/lang/String;

    iput p6, p0, Lcom/crashlytics/android/core/C;->v5:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/crashlytics/android/core/h;)V
    .registers 10

    iget-object v1, p0, Lcom/crashlytics/android/core/C;->j6:Ljava/lang/String;

    iget-object v0, p0, Lcom/crashlytics/android/core/C;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->Hw(Lcom/crashlytics/android/core/W;)Lcom/crashlytics/android/core/a;

    move-result-object v0

    iget-object v2, v0, Lcom/crashlytics/android/core/a;->j6:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/core/C;->DW:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/core/C;->FH:Ljava/lang/String;

    iget-object v5, p0, Lcom/crashlytics/android/core/C;->Hw:Ljava/lang/String;

    iget v6, p0, Lcom/crashlytics/android/core/C;->v5:I

    iget-object v0, p0, Lcom/crashlytics/android/core/C;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->v5(Lcom/crashlytics/android/core/W;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
