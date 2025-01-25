.class Labcd/Jv$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Jv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public DW:Ljava/lang/String;

.field public FH:Ljava/lang/String;

.field public Hw:J

.field public Zo:Ljava/lang/String;

.field public j6:Ljava/lang/String;

.field public v5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Jv$a;->j6:Ljava/lang/String;

    iput-object p2, p0, Labcd/Jv$a;->DW:Ljava/lang/String;

    iput-object p3, p0, Labcd/Jv$a;->FH:Ljava/lang/String;

    iput-wide p4, p0, Labcd/Jv$a;->Hw:J

    iput-object p6, p0, Labcd/Jv$a;->v5:Ljava/lang/String;

    iput-object p7, p0, Labcd/Jv$a;->Zo:Ljava/lang/String;

    return-void
.end method
