.class public Labcd/cm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/cm$a;,
        Labcd/cm$b;,
        Labcd/cm$c;
    }
.end annotation


# static fields
.field private static final DW:[B
    .annotation runtime Labcd/ru;
        field = 0x220d0f6f47f2b320L
    .end annotation
.end field

.field private static final FH:[B
    .annotation runtime Labcd/ru;
        field = -0x2f977bfd7019580L
    .end annotation
.end field

.field private static final Hw:[B
    .annotation runtime Labcd/ru;
        field = 0x2001c0927ea2e6c8L
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final j6:[B
    .annotation runtime Labcd/ru;
        field = -0x29d70bce6899662bL
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x31889cd724850168L
    .end annotation

    const-wide v8, -0x26c5c6ab16c99718L    # -6.771679656789274E121

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/cm;

    const-wide v2, -0x978612f1f1d774cL    # -9.297218020598705E262

    const-wide v4, -0x978612f1f1d774cL    # -9.297218020598705E262

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/cm;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x26c5c6ab16c99718L    # -6.771679656789274E121

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x188

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Labcd/cm;->j6:[B

    const/16 v0, 0x188

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Labcd/cm;->DW:[B

    const/16 v0, 0x188

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Labcd/cm;->FH:[B

    const/16 v0, 0x188

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Labcd/cm;->Hw:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/cm;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :array_0
    .array-data 1
        0x47t
        -0x11t
        -0xct
        -0x7et
        0x4at
        -0xat
        0x12t
        0x6et
        0x1ft
        -0x1bt
        0x36t
        -0x17t
        0x18t
        0x1bt
        -0x76t
        -0x27t
        0x6et
        0x76t
        0x2ct
        0xct
        0x46t
        0x44t
        0xft
        0x28t
        0xet
        -0xdt
        0x1ct
        -0x6bt
        0x53t
        0x6at
        -0x22t
        -0x1bt
        0x3t
        -0x41t
        0x62t
        0x27t
        -0x31t
        0x4dt
        -0x14t
        0x72t
        -0x2ct
        0x5ft
        -0x3ct
        -0x65t
        0x27t
        -0x78t
        -0xct
        0x33t
        -0x43t
        0x68t
        -0x4t
        0x72t
        0xdt
        0x7t
        0x51t
        -0x64t
        0x62t
        -0xat
        0xbt
        0x3ft
        0x2et
        -0x5t
        -0x3ft
        -0x34t
        0x67t
        -0x26t
        0x6ft
        0x1ft
        -0x79t
        -0x3dt
        -0x7t
        0x49t
        0x35t
        0x5et
        0x34t
        -0x7dt
        0x19t
        0x22t
        0x55t
        -0x4bt
        0x34t
        -0x5bt
        0x48t
        -0x66t
        0x34t
        0x2dt
        0x34t
        -0x50t
        -0x14t
        0x3t
        0x60t
        0x18t
        -0x48t
        -0x1bt
        0x44t
        0x7ct
        -0x8t
        -0x57t
        -0x74t
        -0x1bt
        0x3at
        -0x63t
        -0x7t
        -0x8t
        0x41t
        -0x50t
        -0x2dt
        -0x13t
        -0x4ft
        0x2at
        0x52t
        0x55t
        0x15t
        -0x44t
        0x5bt
        -0x40t
        -0xct
        0x4at
        -0x24t
        0x1ft
        0x5et
        0x73t
        0x49t
        -0x33t
        -0x22t
        -0x6bt
        -0x19t
        0x45t
        -0x75t
        0xft
        -0x9t
        -0x31t
        0x59t
        -0x22t
        -0x51t
        -0x2et
        -0x3bt
        0x46t
        -0x37t
        0x30t
        0x43t
        0x7ft
        -0xct
        0x4et
        0x7ct
        -0x11t
        0x1ct
        -0x71t
        -0x5bt
        -0x54t
        0x7t
        0x52t
        -0x47t
        -0x5ft
        -0x15t
        0x67t
        -0x42t
        -0x6at
        -0x7at
        -0x32t
        -0x33t
        -0x37t
        0x30t
        0xbt
        -0x66t
        0x7t
        0xat
        -0x8t
        -0x35t
        -0x2t
        0x4ft
        -0x69t
        -0x4ct
        0x6dt
        -0x5dt
        -0x4bt
        0x7ft
        -0x72t
        -0x2t
        -0x6bt
        -0x61t
        -0x5et
        0x5at
        0x0t
        -0x21t
        0xdt
        -0x66t
        0x7t
        0x4bt
        -0x4at
        -0x4et
        0x20t
        0x28t
        0x63t
        0x6ct
        -0x60t
        0x36t
        -0x64t
        -0xat
        0x5t
        -0xet
        -0xet
        -0x5ft
        0x59t
        0xft
        -0x1ct
        -0x51t
        -0x64t
        0x48t
        0x47t
        -0x40t
        0x7at
        -0x67t
        0xft
        0x6ct
        -0xct
        -0x79t
        -0x20t
        0x6bt
        0x15t
        -0x19t
        -0x15t
        -0x27t
        -0x2et
        0x63t
        -0x11t
        0x53t
        -0x59t
        0x70t
        0x63t
        0x4bt
        -0x18t
        0x4bt
        0x19t
        0x2bt
        -0x1dt
        0x18t
        -0x18t
        0x34t
        0x0t
        0x42t
        0x5dt
        -0x3bt
        0x4ct
        0x58t
        -0x4bt
        0x49t
        0x50t
        0x20t
        -0x1dt
        0x1dt
        0x60t
        0x20t
        0x46t
        -0x19t
        -0x42t
        -0x7et
        0xet
        -0x7ct
        0x11t
        -0x7et
        -0x79t
        0x7at
        0x6ft
        -0x2at
        -0x2et
        -0x56t
        0x7ft
        0x31t
        -0x63t
        0x6dt
        0x9t
        0x28t
        0x1dt
        0x78t
        -0x7t
        -0x73t
        0x1at
        -0x3ct
        -0x34t
        -0x6et
        0x17t
        -0xft
        0x2bt
        0x40t
        0x1bt
        0x66t
        0x4t
        -0x31t
        -0x79t
        -0x29t
        -0x7et
        0x14t
        0x64t
        0xdt
        0x7t
        -0x4dt
        0xft
        0x2t
        -0x3dt
        0x8t
        -0x65t
        -0x3at
        -0x66t
        0x13t
        0x79t
        -0x6ct
        0x3bt
        -0x1dt
        0x4ft
        -0x6dt
        0x18t
        0x26t
        -0x73t
        0x40t
        -0x79t
        0x7t
        0x13t
        0x5t
        0x32t
        0x75t
        0x46t
        -0x32t
        -0x7ft
        0x9t
        -0x34t
        -0x64t
        -0x12t
        0x2bt
        -0x22t
        0x13t
        -0x6bt
        -0x22t
        0x25t
        -0x65t
        -0x14t
        -0x2bt
        0x9t
        0x27t
        0x7et
        0x5ft
        0x4ct
        -0x10t
        0x6ft
        0x54t
        0x70t
        0x10t
        0x27t
        0x11t
        0x78t
        0x3et
        -0x4dt
        -0x62t
        -0x3bt
        -0x32t
        -0x4at
        -0x66t
        -0x42t
        -0x47t
        0x1dt
        0x3ct
        0x60t
        -0x36t
        -0x6bt
        -0x27t
        -0x53t
        0x5t
        -0x6t
        0x5et
        0x7ct
        0x5ft
        -0x6at
        -0x1dt
        -0x69t
        -0x6bt
        0x6ft
        -0xct
        0x68t
        -0xet
        -0x4bt
        0x3et
        0x4bt
        0x73t
        -0x17t
        0xat
        -0x2et
        0x1ft
        -0x4t
        0x51t
        0x76t
        0x73t
        -0x53t
    .end array-data

    :array_1
    .array-data 1
        0x47t
        -0x11t
        -0xct
        -0x7et
        0x4at
        -0xat
        0x12t
        0x6et
        0x1ft
        -0x1bt
        0x36t
        -0x17t
        0x18t
        0x1bt
        -0x76t
        -0x27t
        0x6et
        0x76t
        0x2ct
        0xct
        0x46t
        0x44t
        0xft
        0x28t
        0xet
        -0xdt
        0x1ct
        -0x6bt
        0x53t
        0x6at
        -0x22t
        -0x1bt
        0x3t
        -0x41t
        0x62t
        0x27t
        -0x31t
        0x4dt
        -0x14t
        0x72t
        -0x2ct
        0x5ft
        -0x3ct
        -0x65t
        0x24t
        -0x25t
        -0x4t
        0x8t
        -0x5ft
        0x50t
        -0xdt
        0x60t
        0x1ct
        0x2ct
        0x2bt
        -0x7ft
        0x47t
        -0x12t
        0x2ct
        0x2bt
        0x68t
        -0x30t
        -0x67t
        -0x7ft
        0x24t
        -0x23t
        0x40t
        0x1t
        -0x48t
        -0x52t
        -0x5et
        0x7dt
        0x36t
        0x37t
        0xet
        -0x56t
        0x1ct
        0x2ct
        0xdt
        -0x79t
        0x15t
        -0x56t
        0x46t
        -0x79t
        0x12t
        0x79t
        0x28t
        -0xct
        -0x54t
        0x3bt
        0x41t
        0x22t
        -0x39t
        -0x77t
        0x38t
        0x23t
        -0x69t
        -0x7t
        -0x67t
        -0x72t
        0x7t
        -0x6t
        -0x66t
        -0x79t
        0x4et
        -0x30t
        -0x62t
        -0x14t
        -0x1et
        0xdt
        0x3ft
        0x15t
        0x3et
        -0x1bt
        0x54t
        -0x6bt
        -0xet
        0x78t
        -0xbt
        0x2ct
        0x70t
        0x9t
        0x3et
        -0x3at
        -0x43t
        -0x75t
        -0x80t
        0x43t
        -0x4ft
        0x6t
        -0x62t
        -0x42t
        0x72t
        -0x11t
        -0x4bt
        -0x2dt
        -0x77t
        0x70t
        -0x78t
        0x2bt
        0x78t
        0x16t
        -0x37t
        0x13t
        0x3at
        -0x67t
        0x5et
        -0x75t
        -0x4ft
        -0x55t
        0x29t
        0x4ft
        -0x7dt
        -0x25t
        -0x39t
        0x49t
        -0x65t
        -0x70t
        -0x80t
        -0x18t
        -0x57t
        -0x67t
        0x1dt
        0x78t
        -0x4bt
        0x24t
        0x7bt
        -0xet
        -0x30t
        -0x37t
        0x40t
        -0x49t
        -0x4dt
        0x4at
        -0x67t
        -0x4ft
        0x43t
        -0x70t
        -0x68t
        -0x5at
        -0x77t
        -0x74t
        0x43t
        0x19t
        -0x17t
        0x8t
        -0x52t
        0x51t
        0x4at
        -0x4t
        -0x3dt
        0x1at
        0x39t
        0x7ft
        0x74t
        -0x7ct
        0x6dt
        -0x6dt
        -0x34t
        0x39t
        -0x49t
        -0x40t
        -0xdt
        0x39t
        0x46t
        -0x35t
        -0x37t
        -0x59t
        0x7ft
        0x1ct
        -0x2ct
        0x2dt
        -0x69t
        0x75t
        0x59t
        -0x3ft
        -0x52t
        -0xft
        0x55t
        0xet
        -0x22t
        -0x69t
        -0x31t
        -0x31t
        0x64t
        -0x9t
        0x12t
        -0x7ct
        0x41t
        0x31t
        0x5et
        -0xdt
        0x4at
        0x15t
        0xct
        -0x1ct
        0x30t
        -0x2et
        0x52t
        0x25t
        0x62t
        0x26t
        -0x6dt
        0x28t
        0x6ft
        -0x46t
        0x18t
        0x10t
        0x38t
        -0xat
        0x19t
        0x6ft
        0x7t
        0x39t
        -0x24t
        -0x4ct
        -0x6ct
        0x3et
        -0x6et
        0x5ft
        -0x75t
        -0x4bt
        0x5at
        0x5ct
        -0x2at
        -0x2ft
        -0x62t
        0x44t
        0x10t
        -0x11t
        0x7dt
        0x5t
        0x5t
        0x5at
        0x5et
        -0x6t
        -0x1et
        0x57t
        -0x67t
        -0x2ft
        -0x20t
        0x2ct
        -0x13t
        0x3dt
        0x67t
        0x13t
        0x62t
        0x18t
        -0x39t
        -0x9t
        -0x17t
        -0x7bt
        0x10t
        0x48t
        0x2dt
        0x21t
        -0x67t
        0xct
        0x13t
        -0x8t
        0x3ct
        -0x7ct
        -0x7ct
        -0x6et
        0x66t
        0x30t
        -0x6at
        0x55t
        -0x37t
        0x59t
        -0x6at
        0x6t
        0x2at
        -0x78t
        0x71t
        -0x1ft
        0x39t
        0x6bt
        0x24t
        0x42t
        0x46t
        0x0t
        -0x31t
        -0x18t
        0x3ct
        -0x7ft
        -0x5ct
        -0x12t
        0x6at
        -0x24t
        0x6t
        -0x40t
        -0x58t
        0x7dt
        -0x47t
        -0x3ft
        -0x39t
        0x38t
        0x15t
        0x7dt
        0x1t
        0x62t
        -0x74t
        0x39t
        0x5ft
        0x78t
        0x2bt
        0x62t
        0x72t
        0x44t
        0x5et
        -0x80t
        -0x3t
        -0x21t
        -0x1at
        -0x2t
        -0x64t
        -0x69t
        -0x6et
        0x4ft
        0x3dt
        0x6at
        -0x25t
        -0x18t
        -0xct
        -0x72t
        0x0t
        -0x23t
        0x3et
        0x52t
        0x3et
        -0x34t
        -0x2et
        -0x5at
        -0x11t
        0x7et
        -0x59t
        0x59t
        -0xdt
        -0x42t
        0x15t
        0x6dt
        0x2ft
        -0x5ct
        0x47t
        -0x2et
        0x1ft
        -0x4t
        0x51t
        0x76t
        0x73t
        -0x53t
    .end array-data

    :array_2
    .array-data 1
        0x47t
        -0x11t
        -0xct
        -0x7et
        0x4at
        -0xat
        0x12t
        0x6et
        0x1ft
        -0x1bt
        0x36t
        -0x17t
        0x18t
        0x1bt
        -0x76t
        -0x27t
        0x6et
        0x76t
        0x2ct
        0xct
        0x46t
        0x44t
        0xft
        0x28t
        0xet
        -0xdt
        0x1ct
        -0x6bt
        0x53t
        0x6at
        -0x22t
        -0x1bt
        0x3t
        -0x41t
        0x62t
        0x27t
        -0x31t
        0x4dt
        -0x14t
        0x72t
        -0x2ct
        0x5ft
        -0x3ct
        -0x65t
        0x3ct
        -0x6bt
        -0xbt
        0x17t
        -0x1et
        0x6et
        -0x26t
        0x54t
        0x3t
        0x28t
        0x56t
        -0x7bt
        0x4dt
        -0x1bt
        0x35t
        0x35t
        0x17t
        -0x26t
        -0xat
        -0x45t
        0x46t
        -0x6at
        0x5at
        0x58t
        -0x58t
        -0x68t
        -0x63t
        0x38t
        0x2dt
        0x73t
        0x25t
        -0x45t
        0x1ct
        0x14t
        0xct
        -0x56t
        0x1bt
        -0x6ct
        0x3dt
        -0x27t
        0x31t
        0x45t
        0x13t
        -0x71t
        -0x67t
        0x5t
        0x54t
        0x31t
        -0x4bt
        -0x1at
        0x18t
        0x4ft
        -0x19t
        -0x7et
        -0x42t
        -0x70t
        0x5at
        -0x7t
        -0x57t
        -0x50t
        0x53t
        -0x4dt
        -0x61t
        -0x33t
        -0x78t
        0x5ft
        0x53t
        0x12t
        0x28t
        -0x6t
        0x6bt
        -0x30t
        -0x51t
        0x76t
        -0x2t
        0x29t
        0x7ct
        0x16t
        0x4bt
        -0x32t
        -0x75t
        -0x32t
        -0x47t
        0x7at
        -0x7dt
        0x30t
        -0x67t
        -0x15t
        0x77t
        -0x3bt
        -0x57t
        -0x4at
        -0x62t
        0x6et
        -0x2dt
        0x76t
        0x6ct
        0x73t
        -0x8t
        0x7at
        0x1et
        -0x78t
        0x7ct
        -0x54t
        -0x57t
        -0x4et
        0x15t
        0x67t
        -0x79t
        -0x60t
        -0x2ct
        0x6at
        -0x3ft
        -0x6bt
        -0x7bt
        -0xft
        -0x61t
        -0x2t
        0x3at
        0x57t
        -0x4dt
        0x0t
        0x60t
        -0x20t
        -0x15t
        -0x2bt
        0x3bt
        -0x60t
        -0x54t
        0x2dt
        -0x23t
        -0x4dt
        0x61t
        -0x45t
        -0x45t
        -0x71t
        -0x4bt
        -0x80t
        0x50t
        0x3ft
        -0xft
        0x20t
        -0x79t
        0x36t
        0x10t
        -0x51t
        -0x4dt
        0x7t
        0x20t
        0x44t
        0x0t
        -0x56t
        0x35t
        -0x79t
        -0xdt
        0xdt
        -0x1ct
        -0x36t
        -0x6bt
        0x45t
        0xft
        -0x21t
        -0x65t
        -0x51t
        0x7at
        0x50t
        -0x40t
        0x12t
        -0x4bt
        0x31t
        0xat
        -0x7at
        -0x69t
        -0x3at
        0x60t
        0x1dt
        -0x1at
        -0x6et
        -0x7t
        -0x37t
        0x50t
        -0x2at
        0x6ft
        -0x46t
        0x7at
        0x7et
        0x0t
        -0x6at
        0x23t
        0x23t
        0xct
        -0x1ft
        0x52t
        -0x22t
        0x77t
        0x22t
        0x64t
        0x12t
        -0x78t
        0x67t
        0x2ct
        -0x59t
        0x10t
        0x62t
        0x1t
        -0x33t
        0x30t
        0x6bt
        0xat
        0x15t
        -0x48t
        -0xbt
        -0x53t
        0x3ct
        -0x6ft
        0x3dt
        -0x6at
        -0x55t
        0x61t
        0x4dt
        -0x47t
        -0x5et
        -0x68t
        0x46t
        0x22t
        -0x3et
        0x4dt
        0x1bt
        0x0t
        0x4dt
        0x7et
        -0x1ft
        -0x15t
        0x16t
        -0x22t
        -0xbt
        -0x4t
        0x5et
        -0x6dt
        0x18t
        0x44t
        0x6at
        0x68t
        0x4t
        -0x3dt
        -0x22t
        -0x11t
        -0x1et
        0x2et
        0x67t
        0x12t
        0x38t
        -0x14t
        0xdt
        0x1bt
        -0x29t
        0x12t
        -0x3ft
        -0x52t
        -0x37t
        0x6t
        0xbt
        -0x54t
        0x24t
        -0x3ft
        0x68t
        -0x48t
        0x47t
        0xet
        -0x3t
        0x19t
        -0x3bt
        0x55t
        0x6at
        0xbt
        0x65t
        0x37t
        0xct
        -0x78t
        -0x7et
        0x2ct
        -0x4dt
        -0x80t
        -0x6ft
        0x3ct
        -0x14t
        0x24t
        -0x28t
        -0x56t
        0x8t
        -0x7ct
        -0x6dt
        -0x25t
        0x28t
        0x32t
        0x3et
        0x76t
        0x46t
        -0x6dt
        0x35t
        0x52t
        0x8t
        0x22t
        0x58t
        0x36t
        0x6et
        0x23t
        -0x5at
        -0x43t
        -0x25t
        -0x34t
        -0x49t
        -0x55t
        -0x7et
        -0xct
        0x55t
        0x35t
        0x4et
        -0x3bt
        -0xdt
        -0x11t
        -0x25t
        0x15t
        -0x43t
        0x8t
        0x29t
        0x2ft
        -0x13t
        -0xct
        -0x6et
        -0x4dt
        0x1t
        -0x7t
        0x38t
        -0x1ft
        -0x79t
        0x25t
        0x7bt
        0x4ft
        -0x21t
        0x3t
        -0x2et
        0x1ft
        -0x4t
        0x51t
        0x76t
        0x73t
        -0x53t
    .end array-data

    :array_3
    .array-data 1
        0x47t
        -0x11t
        -0xct
        -0x7et
        0x4at
        -0xat
        0x12t
        0x6et
        0x1ft
        -0x1bt
        0x36t
        -0x17t
        0x18t
        0x1bt
        -0x76t
        -0x27t
        0x6et
        0x76t
        0x2ct
        0xct
        0x46t
        0x44t
        0xft
        0x28t
        0xet
        -0xdt
        0x1ct
        -0x6bt
        0x53t
        0x6at
        -0x22t
        -0x1bt
        0x3t
        -0x41t
        0x62t
        0x27t
        -0x31t
        0x4dt
        -0x14t
        0x72t
        -0x2ct
        0x5ft
        -0x3ct
        -0x65t
        0x22t
        -0x7at
        -0x63t
        0x31t
        -0x5et
        0x50t
        -0x11t
        0x66t
        0x2at
        0x2t
        0x58t
        -0x5ft
        0x31t
        -0x6t
        0x48t
        0x36t
        0x36t
        -0x2bt
        -0x20t
        -0x58t
        0x58t
        -0x7at
        0x70t
        0x8t
        -0x41t
        -0x4et
        -0x41t
        0x62t
        0x32t
        0x2ft
        0x71t
        -0x58t
        0x78t
        0xft
        0x7ft
        -0xat
        0xet
        -0x4et
        0x55t
        -0x62t
        0x19t
        0x29t
        0x1t
        -0x51t
        -0x55t
        0x20t
        0x63t
        0x3bt
        -0x46t
        -0x7t
        0x40t
        0x57t
        -0x30t
        -0x7bt
        -0x7ct
        -0x63t
        0xat
        -0x6t
        -0x65t
        -0x1at
        0x5et
        -0x6ft
        -0x2bt
        -0x27t
        -0x47t
        0x2dt
        0x5dt
        0x49t
        0x13t
        -0x7bt
        0x3t
        -0x69t
        -0x40t
        0x7bt
        -0x3bt
        0x26t
        0x5bt
        0x76t
        0x3ct
        -0x17t
        -0x60t
        -0x46t
        -0x73t
        0x4t
        -0x66t
        0xat
        -0x9t
        -0x2t
        0x7at
        -0x50t
        -0x4ft
        -0x5at
        -0x75t
        0x74t
        -0x38t
        0x17t
        0x7dt
        0x28t
        -0x1t
        0x13t
        0x0t
        -0x77t
        0x0t
        -0x6ft
        -0x6bt
        -0x5ct
        0xbt
        0x47t
        -0x47t
        -0x23t
        -0x1dt
        0x69t
        -0x49t
        -0x69t
        -0x2t
        -0x7ft
        -0x71t
        -0x26t
        0x2ft
        0x4t
        -0x49t
        0x37t
        0x9t
        -0x7et
        -0x44t
        -0x2ct
        0x43t
        -0x60t
        -0x5ct
        0x7et
        -0x59t
        -0xdt
        0x22t
        -0x49t
        -0x65t
        -0x2at
        -0x4et
        -0x60t
        0x33t
        0x7t
        -0x19t
        0x1dt
        -0x43t
        0x35t
        0x39t
        -0x6dt
        -0x41t
        0x18t
        0x24t
        0x71t
        0x60t
        -0x55t
        0x69t
        -0x7ft
        -0x70t
        0x59t
        -0xbt
        -0x18t
        -0x5dt
        0x7ct
        0x8t
        -0x3t
        -0x70t
        -0x60t
        0x61t
        0x47t
        -0x1at
        0x7t
        -0x7ct
        0x77t
        0x6at
        -0x1et
        -0x67t
        -0x27t
        0x66t
        0x3bt
        -0x24t
        -0x6ft
        -0x4t
        -0x4t
        0x7bt
        -0x32t
        0x4ft
        -0x59t
        0x5et
        0x53t
        0x69t
        -0x9t
        0x12t
        0x1ft
        0x73t
        -0x31t
        0x51t
        -0x63t
        0x4et
        0x14t
        0x7ft
        0x3at
        -0x40t
        0x55t
        0x72t
        -0x41t
        0x38t
        0x6bt
        0x3bt
        -0x31t
        0x7at
        0x4et
        0x21t
        0x20t
        -0x19t
        -0x60t
        -0x7ct
        0x8t
        -0x66t
        0xet
        -0x49t
        -0x20t
        0x43t
        0x57t
        -0x43t
        -0x16t
        -0x76t
        0x4dt
        0xft
        -0x37t
        0x65t
        0x14t
        0x35t
        0x72t
        0x7t
        -0x18t
        -0x69t
        0x2et
        -0x62t
        -0x21t
        -0x14t
        0x16t
        -0x3t
        0x34t
        0x4dt
        0x1ct
        0x47t
        0x1t
        -0xdt
        -0x32t
        -0x15t
        -0x12t
        0x14t
        0x5ct
        0x72t
        0x66t
        -0x80t
        0x4t
        0x70t
        -0x46t
        0x1at
        -0x21t
        -0x52t
        -0x2at
        0x15t
        0x19t
        -0x55t
        0x11t
        -0xat
        0x12t
        -0x1dt
        0xet
        0x70t
        -0x79t
        0x7bt
        -0x71t
        0x27t
        0x2ft
        0x18t
        0x32t
        0x3at
        0x42t
        -0x6ft
        -0x60t
        0x32t
        -0x63t
        -0x6dt
        -0x1at
        0x38t
        -0x32t
        0x21t
        -0x24t
        -0x46t
        0x19t
        -0x66t
        -0x27t
        -0x10t
        0x69t
        0x5t
        0x8t
        0x0t
        0x78t
        -0x64t
        0x1dt
        0x33t
        0x69t
        0x31t
        0x7bt
        0x7dt
        0x3ct
        0x14t
        -0x5et
        -0x45t
        -0x3ct
        -0x14t
        -0x42t
        -0x62t
        -0x7ft
        -0x74t
        0x40t
        0xat
        0x28t
        -0x8t
        -0x34t
        -0x35t
        -0x25t
        0x37t
        -0x3bt
        0x1ct
        0x43t
        0x3t
        -0x31t
        -0x40t
        -0x40t
        -0x13t
        0x52t
        -0x2ct
        0x63t
        -0x25t
        -0x80t
        0x26t
        0x45t
        0x77t
        -0x26t
        0x16t
        -0x2et
        0x1ft
        -0x4t
        0x51t
        0x76t
        0x73t
        -0x53t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x25b4ec3a3aab9928L    # 4.829485702079115E-127

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/cm;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x25b4ec3a3aab9928L    # 4.829485702079115E-127

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/cm;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;)Labcd/cm$c;
    .registers 16

    const-wide v12, -0x4d12d4f8e5698c74L

    const/4 v9, 0x0

    :try_start_0
    sget-boolean v0, Labcd/cm;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4d12d4f8e5698c74L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v0

    const-string v1, "Empty data."

    invoke-virtual {v0, v1}, Labcd/yk;->VH(Ljava/lang/String;)V

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v0

    const-string v1, "Empty signature."

    invoke-virtual {v0, v1}, Labcd/yk;->VH(Ljava/lang/String;)V

    move-object v0, v9

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.phonegap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Labcd/cm$b;

    const-string v2, "AIDEkeys"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/cm$b;-><init>([B)V

    sget-object v2, Labcd/cm;->DW:[B

    invoke-virtual {v1, v2}, Labcd/cm$b;->j6([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_1
    invoke-static {v0}, Labcd/cm;->j6(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0, p0, p1}, Labcd/cm;->j6(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v0

    const-string v1, "Signature does not match data."

    invoke-virtual {v0, v1}, Labcd/yk;->VH(Ljava/lang/String;)V

    move-object v0, v9

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.trainer.java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Labcd/cm$b;

    const-string v0, "AIDEkeys"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/cm$b;-><init>([B)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Labcd/cm;->Hw:[B

    invoke-virtual {v1, v2}, Labcd/cm$b;->j6([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/cm;->Zo:Z

    if-eqz v0, :cond_4

    move-wide v2, v12

    move-object v4, v9

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_1
    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v1, Labcd/cm$b;

    const-string v0, "AIDEkeys"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/cm$b;-><init>([B)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Labcd/cm;->FH:[B

    invoke-virtual {v1, v2}, Labcd/cm$b;->j6([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_6
    new-instance v1, Labcd/cm$b;

    const-string v0, "AIDEkeys"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/cm$b;-><init>([B)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Labcd/cm;->j6:[B

    invoke-virtual {v1, v2}, Labcd/cm$b;->j6([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Labcd/cm;->j6(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v0

    const-string v1, "reverse verification failed."

    invoke-virtual {v0, v1}, Labcd/yk;->VH(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v9

    goto/16 :goto_0

    :cond_8
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "purchaseState"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Labcd/cm$a;->j6(I)Labcd/cm$a;

    move-result-object v6

    const-string v0, "productId"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "packageName"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "purchaseTime"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "orderId"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "purchaseToken"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Labcd/cm$c;

    const-string v10, "developerPayload"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Labcd/cm$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLabcd/cm$a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON parse of datas failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/yk;->VH(Ljava/lang/String;)V

    const-string v1, "JSON exception: "

    invoke-static {v1, v0}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v9

    goto/16 :goto_0
.end method

.method private static j6(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x2dd3582d1b5d5740L
    .end annotation

    const-wide v6, 0x3876f2825ba3f2abL    # 1.0789769361210302E-36

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/cm;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3876f2825ba3f2abL    # 1.0789769361210302E-36

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/aide/common/i;->j6(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/aide/common/k; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Base64 decoder ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/yk;->VH(Ljava/lang/String;)V

    const-string v1, "Base64 decoding failed."

    invoke-static {v1}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/cm;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v4, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key spec ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/yk;->VH(Ljava/lang/String;)V

    const-string v1, "Invalid key specification."

    invoke-static {v1}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NSA ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/yk;->VH(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method private static j6(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .annotation runtime Labcd/su;
        method = 0xd6b8e86b47ceee3L
    .end annotation

    const-wide v8, -0x7fcdc759a310200L

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/cm;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fcdc759a310200L

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :try_start_1
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    invoke-static {p2}, Lcom/aide/common/i;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/aide/common/k; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Base64 decoder ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/yk;->VH(Ljava/lang/String;)V

    const-string v0, "Base64 decoding failed."

    invoke-static {v0}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V

    :goto_1
    move v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid signature ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/yk;->VH(Ljava/lang/String;)V

    const-string v0, "Signature exception."

    invoke-static {v0}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    sget-boolean v0, Labcd/cm;->Zo:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :catch_3
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/yk;->VH(Ljava/lang/String;)V

    const-string v0, "Invalid key specification."

    invoke-static {v0}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NSA ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/yk;->VH(Ljava/lang/String;)V

    const-string v0, "NoSuchAlgorithmException."

    invoke-static {v0}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1
.end method
