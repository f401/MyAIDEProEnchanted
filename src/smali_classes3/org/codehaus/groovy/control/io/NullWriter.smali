.class public Lorg/codehaus/groovy/control/io/NullWriter;
.super Ljava/io/Writer;


# static fields
.field public static final j6:Lorg/codehaus/groovy/control/io/NullWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/codehaus/groovy/control/io/NullWriter;

    invoke-direct {v0}, Lorg/codehaus/groovy/control/io/NullWriter;-><init>()V

    sput-object v0, Lorg/codehaus/groovy/control/io/NullWriter;->j6:Lorg/codehaus/groovy/control/io/NullWriter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write([CII)V
    .registers 4

    return-void
.end method
