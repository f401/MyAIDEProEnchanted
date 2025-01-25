.class final Lcom/crashlytics/android/answers/B;
.super Ljava/util/HashSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/answers/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Lcom/crashlytics/android/answers/I$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->j6:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->DW:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->Hw:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
