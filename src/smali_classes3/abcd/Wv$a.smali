.class public Labcd/Wv$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Wv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public DW:Ljava/lang/String;

.field public FH:Labcd/Xv;

.field public Hw:J

.field public j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Labcd/Xv;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Wv$a;->j6:Ljava/lang/String;

    iput-object p2, p0, Labcd/Wv$a;->DW:Ljava/lang/String;

    iput-object p3, p0, Labcd/Wv$a;->FH:Labcd/Xv;

    iput-wide p4, p0, Labcd/Wv$a;->Hw:J

    return-void
.end method
