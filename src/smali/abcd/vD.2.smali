.class public abstract Labcd/vD;
.super Ljava/lang/RuntimeException;


# instance fields
.field private final DW:Ljava/util/Locale;

.field private final j6:Ljava/lang/Class;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Locale;Ljava/lang/Exception;)V
    .registers 5

    invoke-direct {p0, p1, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p2, p0, Labcd/vD;->j6:Ljava/lang/Class;

    iput-object p3, p0, Labcd/vD;->DW:Ljava/util/Locale;

    return-void
.end method
