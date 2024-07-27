.class Labcd/IF;
.super Labcd/JF$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/JF;-><init>(Labcd/HF;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final FH:Labcd/HF;


# direct methods
.method constructor <init>(Labcd/HF;)V
    .registers 2

    iput-object p1, p0, Labcd/IF;->FH:Labcd/HF;

    invoke-direct {p0}, Labcd/JF$a;-><init>()V

    return-void
.end method
