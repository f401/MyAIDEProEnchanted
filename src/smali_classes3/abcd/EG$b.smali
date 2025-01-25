.class Labcd/EG$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/EG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field DW:Labcd/EG$b;

.field FH:Labcd/aH;

.field Hw:J

.field Zo:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Labcd/EG$a;",
            ">;"
        }
    .end annotation
.end field

.field j6:Labcd/EG$b;

.field v5:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Labcd/EG;->j6()Ljava/lang/ref/SoftReference;

    move-result-object v0

    iput-object v0, p0, Labcd/EG$b;->Zo:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method synthetic constructor <init>(Labcd/EG$b;)V
    .registers 2

    invoke-direct {p0}, Labcd/EG$b;-><init>()V

    return-void
.end method
